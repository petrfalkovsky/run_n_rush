import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';

class StdInput extends StatelessWidget {
  StdInput({
    Key? key,
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
    EdgeInsetsGeometry? padding,
  })  : controller = controller ?? TextEditingController(),
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
      height: 52, // высота всего инпута
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        // color: AppColors.accent, // фон
        boxShadow: [
          BoxShadow(
            color: Color(0xFF8784D3),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -2.0,
            blurRadius: 5.0,
          ),
        ],
      ),
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(left: 32.0, bottom: 0),
              child: Text(
                label ?? '',
                style: AppStyles.input.andWeight(FontWeight.w600).copyWith(
                      color: AppColors.text[3],
                    ),
              ),
            ),
          TextField(
            textAlignVertical: TextAlignVertical.center,
            autofocus: autofocus,
            focusNode: focusNode,
            controller: controller,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            keyboardType: keyboardType,
            readOnly: readOnly,
            obscureText: obscureText,
            style: AppStyles.input.andWeight(FontWeight.w600).copyWith(
                  color: AppColors.text[3],
                ),
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true, // заполнить фон
              // fillColor: AppColors.accent, // фон
              contentPadding: const EdgeInsets.only(
                  left: 32.0, bottom: 14), // отступы внутри
              // hintStyle: AppStyles.input
              //     .andWeight(FontWeight.w100)
              //     .copyWith(color: AppColors.text[2]),
              labelText: hintText,
              labelStyle: AppStyles.input
                  .andWeight(FontWeight.normal)
                  .copyWith(color: AppColors.text[2]),
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
