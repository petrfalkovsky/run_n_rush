import 'package:flutter/material.dart';
import 'package:riverside/ui/screens/my_bookings/src/widgets/circular_switcher.dart';
import 'package:riverside/ui/shared/themes/app_text_theme.dart';

Future<int?> showYearPicker(
  BuildContext context, {
  required int selectedYear,
  required List<int> listDate,
}) {
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
              itemCount: listDate.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(context, listDate[index]);
                  },
                  child: Ink(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        CircularSwitcher(
                            value: listDate[index] == selectedYear),
                        const SizedBox(width: 16.0),
                        Text(
                          listDate[index].toString(),
                          style: AppTextTheme.fromPlatform.b1_2,
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
