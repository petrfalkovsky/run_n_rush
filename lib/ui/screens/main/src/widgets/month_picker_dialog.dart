import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:riverside/ui/screens/main/src/widgets/circular_switcher.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';

/// Return month index in range [DateTime.january] - [DateTime.december].
Future<int?> showMonthPicker(
  BuildContext context, {
  required int selectedMonth,
  required List<int> listDate,
}) {
  return showDialog(
    context: context,
    builder: (_) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Material(
            borderRadius: BorderRadius.circular(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listDate.length,
              itemBuilder: (context, index) {
                final formatter = DateFormat('MMMM', 'ru_RU');
                final year = DateTime.now().year;
                final month = listDate[index];
                final t = formatter.format(DateTime(year, month));
                final text = '${t[0].toUpperCase()}${t.substring(1)}';
                return _MonthTile(
                  monthName: text,
                  isSelected: selectedMonth == listDate[index],
                  onTap: () => Navigator.pop(context, listDate[index]),
                );
              },
            ),
          ),
        ),
      );
    },
  );
}

class _MonthTile extends StatelessWidget {
  final String monthName;
  final bool isSelected;
  final Function() onTap;

  const _MonthTile({
    required this.monthName,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        child: Row(
          children: <Widget>[
            CircularSwitcher(value: isSelected),
            const SizedBox(width: 16.0),
            Text(monthName, style: AppTextTheme.fromPlatform.b1_2),
          ],
        ),
      ),
    );
  }
}
