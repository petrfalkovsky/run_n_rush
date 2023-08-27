// import 'package:flutter/material.dart';
// import 'package:get/get.dart' hide Trans;
// import 'package:run_n_rush/core/utils/stream_subscriber.dart';
// import 'package:run_n_rush/data/%20dto/auth/sign_up.dart';
// import 'package:run_n_rush/ui/router/routing.dart';
// import 'package:run_n_rush/ui/screens/auth/src/sign_up/sign_up.dart';
// import 'package:run_n_rush/ui/shared/all_shared.dart';
// import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
// import 'package:vfx_flutter_common/getx_helpers.dart';

// ///
// class SignUpController extends StatexController with StreamSubscriberMixin {
//   SignUpController({SignUpService? service}) : _service = service ?? Get.find();

//   final SignUpService _service;

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final nameController = TextEditingController();
//   final surnameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final birthdayController = TextEditingController();
//   final codeController = TextEditingController();

//   void goToSignIn() => Get.offNamed(AppRoutes.signIn);
//   bool get isLoading => _service.isLoading;

//   Future goToCreateProfile() async {
//     final email = await checkValid(emailController);
//     final password = await checkValid(passwordController, symbol: 8);

//     if (!email) {
//       return alert(
//           value: 'Поле e-mail обязательное',
//           color: AppColors.notification.error);
//     }
//     if (!password) {
//       return alert(
//         value: 'Поле пароль обязательное\nВведите больше или равно 8 символам',
//         color: AppColors.notification.error,
//         durationSec: 5,
//       );
//     }

//     if (email && password) {
//       Get.toNamed(AppRoutes.createProfileSignUp);
//     }
//   }

//   bool get isCode => _service.isCode;

//   Future<bool> checkValid(TextEditingController edit,
//       {int? symbol, bool isBirthday = false}) {
//     final b = edit.text.isNotEmpty;

//     if (symbol != null) {
//       final b = edit.text.isNotEmpty;
//       final isMore6Symbol = edit.text.length >= symbol;
//       return Future.value(b && isMore6Symbol);
//     }
//     if (isBirthday) {
//       final b = edit.text.isNotEmpty;
//       final isEqual10 = edit.text.length == 10;
//       return Future.value(b && isEqual10);
//     }

//     return Future.value(b);
//   }

//   Future getSignUp() async {
//     final birthdayValid =
//         await checkValid(birthdayController, isBirthday: true);
//     final code = await checkValid(codeController);

//     if (!birthdayValid) {
//       return alert(
//           value: 'Поле День рождения обязательное',
//           color: AppColors.notification.error);
//     } else {
//       if (isCode) {
//         if (!code) {
//           return alert(
//               value: 'Поле Код обязательное',
//               color: AppColors.notification.error);
//         }
//         _service.getCode(
//           body: EmailVerifyBody(
//             code: codeController.text,
//             email: emailController.text,
//             password: passwordController.text,
//           ),
//         );
//       } else {
//         final birthday = birthdayController.text;
//         final bSplit = birthday.split('-');
//         final convertBirthday =
//             birthday.isNotEmpty ? '${bSplit[2]}-${bSplit[1]}-${bSplit[0]}' : '';
//         _service.getSignUp(
//           body: SignUpBody(
//             email: emailController.text,
//             password: passwordController.text,
//             firstName: nameController.text,
//             lastName: surnameController.text,
//             phoneNumber: '7${phoneController.text}',
//             birthday: convertBirthday,
//           ),
//         );
//       }
//     }
//   }

//   void getCode() => _service.getCode(
//         body: EmailVerifyBody(
//           code: codeController.text,
//           email: emailController.text,
//           password: passwordController.text,
//         ),
//       );

//   void onChange(TextEditingController edit, String value) {
//     edit.selection =
//         TextSelection.fromPosition(TextPosition(offset: edit.text.length));
//   }
// }
