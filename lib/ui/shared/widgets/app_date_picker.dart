import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';

class AppDatePicker extends StatelessWidget {
  final String? title;
  final Function(num, int) onChanged;
  final TextEditingController dayController;
  final TextEditingController monthController;
  final TextEditingController yearController;
  final bool enabled;
  const AppDatePicker({
    Key? key,
    this.title,
    required this.onChanged,
    required this.dayController,
    required this.monthController,
    required this.yearController,
    this.enabled = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final listController = <_AppDatePickerModel>[
      _AppDatePickerModel(
        title: 'day',
        editController: dayController,
        startNum: dayController.text,
        min: 1,
        max: 31,
      ),
      _AppDatePickerModel(
        title: 'month',
        editController: monthController,
        startNum: monthController.text,
        min: 1,
        max: 12,
      ),
      _AppDatePickerModel(
        title: 'year',
        editController: yearController,
        startNum: yearController.text,
        min: 1970,
        max: 2100,
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title ?? '',
            style: AppTextStyles.b1Bold,
          ),
          16.h,
        ],
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (var i = 0; i < listController.length; i++)
              Flexible(
                child: _dateInput(
                  index: i,
                  enabled: enabled,
                  title: listController[i].title.tr(),
                  edit: listController[i].editController,
                  min: listController[i].min,
                  max: listController[i].max,
                  startNum: listController[i].startNum,
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _dateInput({
    required TextEditingController edit,
    required num min,
    required num max,
    required String title,
    required int index,
    required bool enabled,
    required String startNum,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.captionMob,
        ),
        8.h,
        GestureDetector(
          onTap: enabled
              ? null
              : () {
                  onChanged.call(0, 0);
                },
          child: NumberInputWithIncrementDecrement(
            controller: edit,
            enabled: enabled,
            onIncrement: (i) {
              onChanged.call(i, int.parse(startNum));
              if (i < 10) {
                edit.text = '0$i';
              }
            },
            onDecrement: (i) {
              onChanged.call(i, int.parse(startNum));
              if (i < 10) {
                edit.text = '0$i';
              }
            },
            onSubmitted: (i) {
              onChanged.call(i, int.parse(startNum));
              if (i < 10) {
                edit.text = '0$i';
              }
            },
            onChanged: (i) {
              onChanged.call(i, int.parse(startNum));
              if (i < 10) {
                edit.text = '0$i';
              }
            },
            widgetContainerDecoration: BoxDecoration(
              border: Border.all(width: 0, color: Colors.transparent),
              color: Colors.transparent,
            ),
            numberFieldDecoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            ),
            incDecBgColor: AppColors.background.bgB2,
            decIconDecoration: BoxDecoration(
              color: AppColors.background.bgB1,
              border: Border.all(color: Colors.transparent, width: 0),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(8),
              ),
            ),
            incIconDecoration: BoxDecoration(
              color: AppColors.background.bgB1,
              border: Border.all(color: Colors.transparent, width: 0),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
              ),
            ),
            incIconSize: 27,
            decIconSize: 27,
            style: AppTextStyles.b2SemiBold,
            decIcon: Icons.keyboard_arrow_down,
            incIcon: Icons.keyboard_arrow_up,
            scaleHeight: .8,
            scaleWidth: .8,
            min: min,
            max: max,
          ),
        ),
      ],
    );
  }
}

class _AppDatePickerModel {
  final String title;
  final TextEditingController editController;
  final num min;
  final num max;
  final String startNum;

  _AppDatePickerModel({
    required this.title,
    required this.editController,
    required this.min,
    required this.max,
    required this.startNum,
  });
}
