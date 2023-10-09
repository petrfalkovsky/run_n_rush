import 'package:easy_localization/easy_localization.dart';

import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/styles.dart';

import 'package:flutter/material.dart';

class InventoryPriceFilter extends StatefulWidget {
  final InventoryController controller;

  const InventoryPriceFilter({super.key, required this.controller});

  @override
  State<InventoryPriceFilter> createState() => _InventoryPriceFilterState();
}

@override
class _InventoryPriceFilterState extends State<InventoryPriceFilter> {
  final List<String> priceFilterValues = ['HIGHER', 'LOWER'];

  final List<String> priceFilterTexts = ['LOWER'.tr(), 'HIGHER'.tr()];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButton<String>(
          value: widget.controller.selectedPriceFilter.value,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          iconSize: 24,
          elevation: 16,
          style: AppStyles.plainText
              .andWeight(FontWeight.bold)
              .andColor(AppColors.text.primary),
          underline: Container(),
          dropdownColor: Colors.black,
          onChanged: (String? newValue) {
            if (newValue != null) {
              setState(() {
                widget.controller.setPriceFilter(newValue);
              });
            }
          },
          items:
              priceFilterValues.map<DropdownMenuItem<String>>((String value) {
            // соответствующий текст в priceFilterTexts
            final index = priceFilterValues.indexOf(value);
            final displayText = index != -1 ? priceFilterTexts[index] : value;

            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                displayText,
                style: AppStyles.plainText
                    .andWeight(FontWeight.bold)
                    .andColor(AppColors.text.primary),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}