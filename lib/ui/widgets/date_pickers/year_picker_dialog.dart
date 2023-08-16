import 'package:flutter/material.dart';
import 'package:riverside/ui/widgets/date_pickers/circular_switcher.dart';
// import 'package:riverside/modules/core/presentation/circular_switcher.dart';

Future<int?> showYearPicker(
  BuildContext context, {
  required int selectedYear,
  required int maxYear,
  int totalYears = 20,
}) {
  assert(selectedYear >= maxYear - totalYears && selectedYear <= maxYear);

  return showDialog(
    context: context,
    builder: (context) {
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
              itemCount: totalYears,
              itemBuilder: (context, index) {
                final year = maxYear - index;

                return InkWell(
                  onTap: () {
                    Navigator.pop(context, year);
                  },
                  child: Ink(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        CircularSwitcher(value: year == selectedYear),
                        const SizedBox(width: 16.0),
                        Text(
                          '$year',
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
              },
            ),
          ),
        ),
      );
    },
  );
}
