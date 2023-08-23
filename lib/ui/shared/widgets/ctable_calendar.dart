import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/constants/app_text_style.dart';

class CTableCalendar extends StatelessWidget {
  const CTableCalendar({
    Key? key,
    required this.focusedDay,
    required this.currentDay,
    this.onDaySelected,
    required this.startingDayOfWeek,
    this.rangeStartDay,
  }) : super(key: key);

  final DateTime focusedDay;
  final DateTime currentDay;
  final Function(DateTime, DateTime)? onDaySelected;
  final StartingDayOfWeek startingDayOfWeek;
  final DateTime? rangeStartDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      // rangeStartDay: DateTime.now(),
      startingDayOfWeek: StartingDayOfWeek.monday,
      firstDay: DateTime.now(),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: focusedDay,
      currentDay: currentDay,
      calendarFormat: CalendarFormat.week,
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: AppTextStyles.b1Bold,
        leftChevronMargin: const EdgeInsets.all(0),
        leftChevronPadding: const EdgeInsets.all(0),
        leftChevronIcon: Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.accent.accent1,
          size: 16,
        ),
        rightChevronMargin: const EdgeInsets.all(0),
        rightChevronPadding: const EdgeInsets.all(0),
        rightChevronIcon: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.accent.accent1,
          size: 16,
        ),
      ),
      locale: 'ru-Ru',
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: AppTextStyles.b2Regular,
        weekendStyle: AppTextStyles.b2Regular,
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: AppTextStyles.b2Regular,
        todayDecoration: BoxDecoration(
          color: AppColors.accent.accent1,
          borderRadius: BorderRadius.circular(8),
        ),
        defaultDecoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        weekendDecoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        outsideDecoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onDaySelected: onDaySelected,
    );
  }
}
