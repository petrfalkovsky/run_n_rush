// DateUtils.getDaysInMonth(2022, 3);
// MaterialLocalizations.of(context);

import 'package:easy_localization/easy_localization.dart';

abstract class DateHelper {
  const DateHelper._();

  static List<String> getLocalizedMonthNames([bool toUpperCase = true]) {
    final formatter = DateFormat('MMMM');
    final List<String> localizedMonths = [];
    for (var i = DateTime.january; i <= DateTime.december; i++) {
      var monthName = formatter.format(DateTime(2022, i));

      if (toUpperCase) {
        final buffer = StringBuffer(monthName[0].toUpperCase());
        buffer.write(monthName.substring(1));
        monthName = buffer.toString();
      }

      localizedMonths.add(monthName);
    }

    return localizedMonths;
  }

  static String localizeFullMonthName(
    int month, [
    bool toUpperCase = true,
  ]) {
    assert(
      month >= DateTime.january && month <= DateTime.december,
      'Wrong month value provided. Should be in range [${DateTime.january};${DateTime.december}].\nCurrent value: $month',
    );

    final formatter = DateFormat('MMMM');
    var monthName = formatter.format(DateTime(2022, month));

    if (toUpperCase) {
      final buffer = StringBuffer(monthName[0].toUpperCase());
      buffer.write(monthName.substring(1));
      monthName = buffer.toString();
    }

    return monthName;
  }
}
