import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:riverside/core/utils/stream_subscriber.dart';
import 'package:riverside/data/repository/local/local_repository.dart';
import 'package:riverside/logic/auth/sign_in_bloc.dart';
import 'package:riverside/ui/shared/alert.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

class SignInService extends GetxService with StreamSubscriberMixin {
  SignInService({
    LocalRepository? repoLocal,
    SignInBloc? signInBloc,
    GeneralScaffoldService? generalScaffoldService,
  })  : _repoLocal = repoLocal ?? GetIt.I.get(),
        _generalScaffoldService = generalScaffoldService ?? Get.find(),
        _signInBloc = signInBloc ?? GetIt.I.get();

  final LocalRepository _repoLocal;
  final SignInBloc _signInBloc;
  final GeneralScaffoldService _generalScaffoldService;

  final _isLoading = false.obs;
  bool get isLoading => _isLoading();
  bool changeIsLoading(bool b) => _isLoading(b);

  Future getSignIn({required String email, required String password}) async {
    await _repoLocal.writeAccessToken('');

    _signInBloc.add(SignInEvent.getSignIn(email: email, password: password));
  }

  void resetPassword(String email) {
    _signInBloc.add(SignInEvent.getResetPassword(email: email));
  }

  void _processSignInState(SignInState state) {
    state.maybeWhen(
      loading: () => _isLoading(true),
      gotSignIn: (data) {
        data.fold(
          (l) => _isLoading(false),
          (r) async {
            await _repoLocal.writeUserData(r.profileInfo);
            await _repoLocal.writeAccessToken(r.token.access);
            await _repoLocal.writeRefreshToken(r.token.refresh);
            _generalScaffoldService.goToPage(0);
            _isLoading(false);
          },
        );
      },
      gotRessetPassword: (data) {
        data.fold(
          (l) => _isLoading(false),
          (r) {
            alert(
                value: 'Пароль отправлен на почту',
                color: AppColors.notification.success);
            Get.back();
            _isLoading(false);
          },
        );
      },
      orElse: () {
        debugPrint('gotSignIn ERROR');
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    subscribeIt(_signInBloc.stream.listen(_processSignInState));
  }
}
