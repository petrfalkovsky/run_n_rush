// import 'package:get/get.dart' hide Trans;
// import 'package:run_n_rush/core/utils/stream_subscriber.dart';
// import 'package:run_n_rush/ui/screens/auth/src/sign_up/src/sign_up_service.dart';
// import 'package:run_n_rush/ui/screens/settings/src/settings_service.dart';
// import 'package:run_n_rush/ui/shared/widgets/general_scaffold/src/general_scaffold_service.dart';

// class AuthService extends GetxService with StreamSubscriberMixin {
//   AuthService({
//     SettingsService? settingService,
//     SignUpService? signUpService,
//     GeneralScaffoldService? generalScaffoldService,
//   })  : _settingService = settingService ?? Get.find(),
//         _signUpService = signUpService ?? Get.find(),
//         _generalScaffoldService = generalScaffoldService ?? Get.find();

//   final SettingsService _settingService;
//   final SignUpService _signUpService;
//   final GeneralScaffoldService _generalScaffoldService;

//   void logout(String refreshToken) {
//     _settingService.logout();
//     _generalScaffoldService.goToPage(0);
//     _signUpService.changeIsCode(false);
//   }
// }
