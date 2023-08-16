import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:riverside/core/utils/stream_subscriber.dart';
import 'package:riverside/data/%20dto/auth/sign_up.dart';
import 'package:riverside/data/repository/local/local_repository.dart';
import 'package:riverside/logic/auth/sign_up_bloc.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

class SignUpService extends GetxService with StreamSubscriberMixin {
  SignUpService({
    LocalRepository? repoLocal,
    SignUpBloc? signUpBloc,
    GeneralScaffoldService? generalScaffoldService,
  })  : _repoLocal = repoLocal ?? GetIt.I.get(),
        _generalScaffoldService = generalScaffoldService ?? Get.find(),
        _signUpBloc = signUpBloc ?? GetIt.I.get();

  final LocalRepository _repoLocal;
  final SignUpBloc _signUpBloc;
  final GeneralScaffoldService _generalScaffoldService;

  final _isCode = false.obs;
  bool get isCode => _isCode();
  void changeIsCode(bool b) => _isCode(b);

  final _isLoading = false.obs;
  bool get isLoading => _isLoading();

  Future getSignUp({required SignUpBody body}) async {
    await _repoLocal.writeAccessToken('');
    _signUpBloc.add(SignUpEvent.getSignUp(body: body));
  }

  void getCode({required EmailVerifyBody body}) {
    _signUpBloc.add(SignUpEvent.getCode(body: body));
  }

  void _processSignInState(SignUpState state) {
    state.maybeWhen(
      loading: () => _isLoading(true),
      gotSignUp: (data) {
        debugPrint('data $data');
        _isCode(true);
        alert(
          value: 'entryConfirmCode'.tr(),
          color: AppColors.notification.success,
        );
        _isLoading(false);
      },
      gotCode: (data) {
        data.fold(
          (l) => _isLoading(false),
          (r) async {
            await _repoLocal.writeUserData(r.profileInfo);
            await _repoLocal.writeAccessToken(r.token.access);
            await _repoLocal.writeRefreshToken(r.token.refresh);
            alert(
              value: 'userRegisteredSuccessfully'.tr(),
              color: AppColors.notification.success,
            );
            _generalScaffoldService.goToPage(0);
            _isLoading(false);
          },
        );
      },
      orElse: () {
        debugPrint('gotCode ERROR');
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    subscribeIt(_signUpBloc.stream.listen(_processSignInState));
  }
}
