import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:get_it/get_it.dart';
import 'package:riverside/core/utils/stream_subscriber.dart';
import 'package:riverside/data/%20dto/settings/change_email_dto.dart';
import 'package:riverside/data/%20dto/settings/profile_dto.dart';
import 'package:riverside/data/repository/local/local_repository.dart';
import 'package:riverside/domain/profile/profile_info.dart';
import 'package:riverside/logic/auth/logout_bloc.dart';
import 'package:riverside/logic/profile/update_profile_bloc.dart';
import 'package:riverside/ui/router/routing.dart';
import 'package:riverside/ui/screens/auth/src/sign_up/sign_up.dart';
import 'package:riverside/ui/screens/main/main.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';

class SettingsService extends GetxService with StreamSubscriberMixin {
  SettingsService({
    LogoutBloc? logoutBloc,
    UpdateProfileBloc? updateProfile,
    SignUpService? signUpService,
    MainService? myBookingService,
    LocalRepository? repoLocal,
  })  : _logoutBloc = logoutBloc ?? GetIt.I.get(),
        _updateProfileBloc = updateProfile ?? GetIt.I.get(),
        _signUpService = signUpService ?? Get.find(),
        _myBookingService = myBookingService ?? Get.find(),
        _repoLocal = repoLocal ?? GetIt.I.get();

  final LogoutBloc _logoutBloc;
  final UpdateProfileBloc _updateProfileBloc;
  final SignUpService _signUpService;
  final MainService _myBookingService;

  final LocalRepository _repoLocal;

  final _userData = ProfileInfo.empty().obs;
  Stream<ProfileInfo> get userDataStream => _userData.stream;

  final dayController = TextEditingController();
  final monthController = TextEditingController();
  final yearController = TextEditingController();
  final commonController = TextEditingController();
  final newPasswordController = TextEditingController();

  final _isLoading = false.obs;
  bool get isLoading => _isLoading();

  final _isCode = false.obs;
  Stream<bool> get isCodeStream => _isCode.stream;

  Future<void> logout() async {
    final refreshToken = await _repoLocal.readRefreshToken();
    _logoutBloc.add(LogoutEvent.getLogout(refreshToken));
  }

  void changePassword({
    required String oldPassword,
    required String newPassword,
  }) =>
      _updateProfileBloc.add(UpdateProfileEvent.changePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
      ));

  void changeEmail({
    required ChangeEmailBody body,
  }) =>
      _updateProfileBloc.add(UpdateProfileEvent.getVerifyCode(body: body));

  void changeEmailConfirm({
    required ChangeEmailConfirmBody body,
  }) =>
      _updateProfileBloc.add(UpdateProfileEvent.changeEmail(
        body: body,
      ));

  void changeProfile(ProfileBody profile) => _updateProfileBloc
      .add(UpdateProfileEvent.changeProfile(profileDto: profile));

  void _processLogoutState(LogoutState state) {
    state.maybeWhen(
      loading: () => _isLoading(true),
      gotLogout: (data) {
        data.fold(
          (l) => _isLoading(false),
          (r) {
            _isLoading(false);
          },
        );
        Get.offAllNamed(AppRoutes.splash);
        _signUpService.changeIsCode(false);
        _myBookingService.clearLists();
        _repoLocal.writeAccessToken('');
        _repoLocal.writeRefreshToken('');
        _repoLocal.writeUserData(ProfileInfo.empty());
        alert(value: 'Приходите еще', color: AppColors.notification.success);
        _repoLocal.writeAccessToken('');
        _repoLocal.writeRefreshToken('');
      },
      orElse: () {},
    );
  }

  void _processUpdateProfileState(UpdateProfileState state) {
    state.maybeWhen(
      loading: () => _isLoading(true),
      gotChangePassword: (data) {
        debugPrint('data gotChangePassword $data');
        data.fold(
          (l) => back(),
          (r) {
            alert(value: r.success, color: AppColors.notification.success);
            back(isBack: true);
          },
        );
      },
      getVerifyCode: (data) {
        _isCode(data.isRight());
        back();
      },
      gotChangeEmail: ((data) {
        data.fold(
          (l) => null,
          (r) async {
            final profile = await _repoLocal.readUserData();
            if (r.email != profile.email) {
              alert(value: 'Успешно', color: AppColors.notification.success);
              _userData(r);

              _repoLocal.writeUserData(r);
              _isCode(false);
              back(isBack: true);
            } else {
              back();
            }
          },
        );
      }),
      gotChangeProfile: ((data) {
        data.fold(
          (l) => back(),
          (r) {
            alert(value: 'Успешно', color: AppColors.notification.success);
            _userData(r);

            _repoLocal.writeUserData(r);
            back(isBack: true);
          },
        );
      }),
      orElse: () {},
    );
  }

  void back({bool isBack = false}) {
    _isLoading(false);
    if (isBack) {
      Get.back();
    }
  }

  @override
  void onInit() async {
    super.onInit();
    subscribeIt(_logoutBloc.stream.listen(_processLogoutState));
    subscribeIt(_updateProfileBloc.stream.listen(_processUpdateProfileState));
  }
}
