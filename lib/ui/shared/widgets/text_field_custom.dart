import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:riverside/ui/shared/all_shared.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    Key? key,
    this.label,
    this.hintText,
    this.onChanged,
    this.controllerText,
    this.height,
    this.width,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  final String? hintText;
  final double? height;
  final double? width;
  final String? label;
  final EdgeInsetsGeometry padding;
  final bool error = false;
  final Function(String)? onChanged;
  final TextEditingController? controllerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                label ?? '',
                style: AppStyles.text12.andWeight(FontWeight.w600),
                // .copyWith(color: AppColors.textGrey),
              ),
            ),
          4.h,
          SizedBox(
            width: width ?? Get.width,
            height: height ?? 230,
            child: TextField(
              textAlignVertical: TextAlignVertical.top,
              style: AppStyles.text16,
              strutStyle: const StrutStyle(
                  fontSize: 16, fontFamily: AppStyles.fontRegular),
              onChanged: onChanged,
              maxLength: 500,
              minLines: null,
              maxLines: null,
              expands: true,
              keyboardType: TextInputType.multiline,
              textAlign: TextAlign.left,
              controller: controllerText,
              decoration: InputDecoration(
                hintMaxLines: 2,
                hintText: hintText,
                contentPadding: const EdgeInsets.all(15),
                hintStyle: AppStyles.text14.andWeight(FontWeight.bold),
                // .andColor(AppColors.textDark),
                border: InputBorder.none,
                // focusedBorder: const OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //   borderSide: BorderSide(width: 2, color: AppColors.primary),
                // ),
                // enabledBorder: const OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                //   borderSide:
                //       BorderSide(width: 2, color: AppColors.borderLightGrey),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
