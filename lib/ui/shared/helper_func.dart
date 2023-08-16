import 'package:easy_localization/easy_localization.dart';

String dateToDDMMYYYY(DateTime date) {
  final d = DateFormat('dd-MM-yyyy').format(date);
  return d;
}

String dateToYYYYMMDD(String date) {
  if (date.isNotEmpty) {
    final t = date.split('-');
    final i = '${t[2]}-${t[1]}-${t[0]}';
    final datetime = DateTime.parse(i);
    final d = DateFormat('yyyy-MM-dd').format(datetime);
    return d;
  }
  return '';
}
