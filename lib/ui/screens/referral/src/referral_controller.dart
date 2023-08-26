import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:run_n_rush/core/utils/stream_subscriber.dart';
import 'package:run_n_rush/data/%20dto/settings/change_email_dto.dart';
import 'package:run_n_rush/data/%20dto/settings/profile_dto.dart';
import 'package:run_n_rush/data/repository/local/local_repository.dart';
import 'package:run_n_rush/domain/profile/profile_info.dart';
import 'package:run_n_rush/ui/router/routing.dart';
import 'package:run_n_rush/ui/screens/referral/referral.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:vfx_flutter_common/getx_helpers.dart';

enum TypeSetting { name, sername, birthday, phone, password, email, code, none }

class ReferralsController extends StatexController with StreamSubscriberMixin {
  ReferralsController({
    ReferralsService? service,
    LocalRepository? repoLocal,
  })  : _service = service ?? Get.find(),
        _repoLocal = repoLocal ?? GetIt.I.get();

  final ReferralsService _service;
  final LocalRepository _repoLocal;

  final _userData = ProfileInfo.empty().obs;
  ProfileInfo get userData => _userData();
  Stream<ProfileInfo> get userDataStream => _service.userDataStream;

  final _showButton = false.obs;
  bool get showButton => _showButton();
  void changeShowButton(bool b) => _showButton(b);

  final _type = TypeSetting.none.obs;
  final _updateTitle = ''.obs;
  String get updateTitle => _updateTitle();
  final _updateDesc = ''.obs;
  String get updateDesc => _updateDesc();
  final _updateHintText = ''.obs;
  String get updateHintText => _updateHintText();
  final _updateButtonName = ''.obs;
  String get updateButtonName => _updateButtonName();

  final _isPassword = false.obs;
  bool get isPassword => _isPassword();
  final _isBirthday = false.obs;
  bool get isBirthday => _isBirthday();
  final _isPhone = false.obs;
  bool get isPhone => _isPhone();

  bool get isLoading => _service.isLoading;

  TextEditingController get dayController => _service.dayController;
  TextEditingController get monthController => _service.monthController;
  TextEditingController get yearController => _service.yearController;
  TextEditingController get commonController => _service.commonController;
  TextEditingController get newPasswordController =>
      _service.newPasswordController;

  String tmpEmail = '';

  Future logout() async => await _service.logout();
  Stream<bool> get isCodeStream => _service.isCodeStream;
  late ProfileBody _prfile;
  void clearFunc() {
    commonController.text = '';
    newPasswordController.text = '';
    _isPassword(false);
    _isBirthday(false);
  }

  void _updateNames({
    required String name,
    required String desc,
    required String hint,
    required String button,
  }) {
    _updateTitle(name);
    _updateDesc(desc);
    _updateHintText(hint);
    _updateButtonName(button);
  }

  void goToUpdateScreen(TypeSetting type) {
    clearFunc();
    Get.toNamed(AppRoutes.updateProfile);
    _type(type);
    switch (type) {
      case TypeSetting.name:
        _updateNames(
          name: 'editName',
          desc: 'instructionEditName',
          hint: 'name',
          button: 'saveName',
        );
        break;
      case TypeSetting.birthday:
        _updateNames(
          name: 'birthday',
          desc: 'Ведите новую дату рождения',
          hint: 'birthdayDateMask',
          button: 'Сменить дату рождения',
        );
        _isBirthday(true);
        break;
      case TypeSetting.sername:
        _updateNames(
          name: 'editSurname',
          desc: 'instructionEditSurname',
          hint: 'surname',
          button: 'saveSurname',
        );
        break;
      case TypeSetting.phone:
        _updateNames(
          name: 'editPhoneNumber',
          desc: 'instructionEditPhoneNumber',
          hint: 'phoneNumber',
          button: 'saveNumber',
        );
        _isPhone(true);
        break;
      case TypeSetting.password:
        _updateNames(
          name: 'editPassword',
          desc: 'instructionEditPassword',
          hint: 'password',
          button: 'savePassword',
        );
        _isPassword(true);
        break;
      case TypeSetting.email:
        _updateNames(
          name: 'editEmail',
          desc: 'instructionEditEmail',
          hint: 'email',
          button: 'sendCode',
        );
        break;
      case TypeSetting.code:
        _updateNames(
          name: 'editEmail',
          desc: '',
          hint: 'code',
          button: 'saveEmail',
        );
        break;
      default:
        break;
    }
  }

  void changePassword() => _service.changePassword(
        oldPassword: commonController.text,
        newPassword: newPasswordController.text,
      );

  void changeEmail() => _service.changeEmail(
        body: ChangeEmailBody(newEmail: commonController.text),
      );

  void changeEmailConfirm() {
    _service.changeEmailConfirm(
      body: ChangeEmailConfirmBody(
        newEmail: tmpEmail,
        code: commonController.text,
      ),
    );
  }

  void changeProfile(ProfileBody profile) {
    debugPrint('commonController.text ${commonController.text}');
    if (commonController.text.isNotEmpty) {
      _service.changeProfile(profile);
    } else {
      alert(
          value: 'Поле не должно быть пустым',
          color: AppColors.notification.error);
    }
  }

  void updateProfile() {
    switch (_type()) {
      case TypeSetting.password:
        changePassword();
        break;
      case TypeSetting.email:
        tmpEmail = commonController.text;
        changeEmail();
        break;
      case TypeSetting.code:
        changeEmailConfirm();
        break;
      case TypeSetting.name:
        changeProfile(
          _prfile.copyWith(
            firstName: commonController.text,
          ),
        );
        break;
      case TypeSetting.sername:
        changeProfile(
          _prfile.copyWith(
            lastName: commonController.text,
          ),
        );
        break;
      case TypeSetting.birthday:
        changeProfile(
          _prfile.copyWith(
            birthday: dateToYYYYMMDD(commonController.text),
          ),
        );

        break;
      case TypeSetting.phone:
        changeProfile(
          _prfile.copyWith(
            phoneNumber: '7${commonController.text}',
          ),
        );

        break;
      default:
    }
  }

  void updateDateBirthday() {
    final dateBirdateyList = _userData().birthday?.split('-') ?? [];
    if (dateBirdateyList.isNotEmpty) {
      dayController.text = dateBirdateyList[2];
      monthController.text = dateBirdateyList[1];
      yearController.text = dateBirdateyList[0];
    }
  }

  @override
  Future onReady() async {
    super.onReady();
    _userData(await _repoLocal.readUserData());

    _prfile = ProfileBody(
      firstName: _userData().firstName,
      lastName: _userData().lastName,
      birthday: _userData().birthday,
      phoneNumber: _userData().phoneNumber,
    );

    updateDateBirthday();

    subscribeIt(userDataStream.listen((event) {
      _userData(event);
      _prfile = ProfileBody(
        firstName: _userData().firstName,
        lastName: _userData().lastName,
        birthday: _userData().birthday,
        phoneNumber: _userData().phoneNumber,
      );
      updateDateBirthday();
    }));

    subscribeIt(isCodeStream.listen((event) {
      debugPrint('STRAM EVENT $event');
      if (event) {
        Get.back();
        goToUpdateScreen(TypeSetting.code);
      }
    }));
  }
}
