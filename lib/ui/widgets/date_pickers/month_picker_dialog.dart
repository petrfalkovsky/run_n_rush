import 'package:flutter/material.dart';
import 'package:riverside/ui/widgets/date_pickers/circular_switcher.dart';
import 'package:riverside/ui/widgets/date_pickers/date_helper.dart';
// import 'package:riverside/modules/core/presentation/circular_switcher.dart';
// import 'package:riverside/modules/core/presentation/date_helper.dart';

/// Return month index in range [DateTime.january] - [DateTime.december].
Future<int?> showMonthPicker(
  BuildContext context, {
  required int selectedMonth,
}) {
  assert(
    selectedMonth <= DateTime.december && selectedMonth >= DateTime.january,
    "'selectedMonth'($selectedMonth) should be in range [${DateTime.january}; ${DateTime.december}]",
  );

  final localizedMonths = DateHelper.getLocalizedMonthNames();

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
              itemCount: localizedMonths.length,
              itemBuilder: (context, index) {
                return _MonthTile(
                  monthName: localizedMonths[index],
                  isSelected: selectedMonth == index + 1,
                  onTap: () {
                    // by increasing index up we make value valid to
                    // DateTime.january - DateTime.december range
                    Navigator.pop(context, index + 1);
                  },
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
            Text(
              monthName,
              style: const TextStyle(
                color: Color(0xFF222222),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
