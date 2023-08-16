import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverside/ui/shared/all_shared.dart';
import 'package:riverside/ui/shared/constants/app_colors.dart';
import 'package:riverside/ui/shared/constants/app_text_style.dart';

class StdInput extends StatelessWidget {
  StdInput(
      {Key? key,
      TextEditingController? controller,
      this.label,
      this.onChanged,
      this.obscureText = false,
      this.readOnly = false,
      this.autofocus = false,
      this.focusNode,
      this.error = false,
      this.value = '',
      this.hintText = '',
      this.keyboardType,
      this.icon = '',
      this.iconWidth,
      this.iconHeight,
      this.iconFunc,
      this.inputFormatters,
      this.suffixIcon,
      this.isPhone = false,
      EdgeInsetsGeometry? padding})
      : controller = controller ?? TextEditingController(),
        padding = padding ?? const EdgeInsets.all(0),
        super(key: key);

  final TextEditingController controller;
  final String? label;
  final bool obscureText;
  final Function(String)? onChanged;
  final bool readOnly;
  final String value;
  final String hintText;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry padding;
  final bool autofocus;
  final bool error;
  final FocusNode? focusNode;
  final String icon;
  final double? iconWidth;
  final double? iconHeight;
  final Function()? iconFunc;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                label ?? '',
                style: AppStyles.text12,
                // .andWeight(FontWeight.w600)
                // .copyWith(color: AppColors.textGrey),
              ),
            ),
          4.h,
          TextField(
            autofocus: autofocus,
            focusNode: focusNode,
            controller: controller,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            keyboardType: keyboardType,
            readOnly: readOnly,
            obscureText: obscureText,
            style: AppTextStyles.b2Regular,
            decoration: InputDecoration(
              fillColor: AppColors.background.bgB1,
              label: Text(
                hintText,
                style: AppTextStyles.captionMob,
              ),
              hintStyle: AppTextStyles.b2Regular,
              prefix: isPhone ? const Text('+7') : null,
              prefixStyle: AppTextStyles.b2Regular,
              suffixIcon: icon != ''
                  ? GestureDetector(
                      onTap: iconFunc,
                      child: const Icon(
                        Icons.qr_code,
                        size: 20,
                      ),
                    )
                  : suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
