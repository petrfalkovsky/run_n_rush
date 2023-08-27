// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart' hide Trans;
// import 'package:run_n_rush/ui/router/routing.dart';
// import 'package:run_n_rush/ui/screens/auth/src/sign_in/sign_in.dart';
// import 'package:run_n_rush/ui/shared/all_shared.dart';
// import 'package:run_n_rush/ui/shared/themes/app_colors_theme.dart';
// import 'package:run_n_rush/ui/shared/themes/app_text_theme.dart';
// import 'package:run_n_rush/ui/shared/widgets/buttons/custom_text_button.dart';
// import 'package:run_n_rush/ui/shared/widgets/std_button.dart';
// import 'package:run_n_rush/ui/shared/widgets/std_input.dart';
// import 'package:vfx_flutter_common/getx_helpers.dart';
// import 'package:vfx_flutter_common/utils.dart';

// class SignInScreen extends StatexWidget<SignInController> {
//   SignInScreen({Key? key}) : super(() => SignInController(), key: key) {
//     debugPrint('$now: SignInScreen.SignInScreen');
//   }

//   @override
//   Widget buildWidget(BuildContext context) {
//     return GeneralScaffold(
//       navBarEnable: false,
//       appBar: getStatAppBar(
//         context,
//         text: 'entry'.tr(),
//         elevation: 0,
//         isLeading: true,
//         router: AppRoutes.authWelcome,
//       ),
//       child: CustomScrollView(
//         slivers: [
//           SliverFillRemaining(
//             hasScrollBody: false,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   StdInput(
//                     hintText: 'email'.tr(),
//                     controller: controller.emailController,
//                     onChanged: (v) =>
//                         controller.onChange(controller.emailController, v),
//                   ),
//                   16.h,
//                   StdInput(
//                     hintText: 'password'.tr(),
//                     controller: controller.passwordController,
//                     obscureText: true,
//                     onChanged: (v) =>
//                         controller.onChange(controller.passwordController, v),
//                   ),
//                   16.h,
//                   CustomTextButton(
//                     text: 'forgotPassword'.tr(),
//                     alignment: Alignment.centerLeft,
//                     onPressed: controller.goToResetPassword,
//                   ),
//                   const Spacer(),
//                   Obx(() => StdButton(
//                         text: 'login'.tr(),
//                         onPress: controller.getSignIn,
//                         isActive: true,
//                         isLoading: controller.isLoading,
//                       )),
//                   24.h,
//                   RichText(
//                     textAlign: TextAlign.center,
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: '${'doNotHaveAnAccount'.tr()}  ',
//                           style: Theme.of(context).textTheme.bodyText2,
//                         ),
//                         TextSpan(
//                           text: 'registration'.tr(),
//                           style: Theme.of(context).appTextTheme.b2_1.copyWith(
//                               color: Theme.of(context)
//                                   .appColorsScheme
//                                   .colors
//                                   .accent
//                                   .accent1),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = controller.goToSignUp,
//                         ),
//                       ],
//                     ),
//                   ),
//                   45.h,
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
