// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/screens/inventory/inventory.dart';
import 'package:run_n_rush/ui/shared/constants/app_colors.dart';
import 'package:run_n_rush/ui/shared/styles.dart';

class ToggleAnimatedSwitcher extends StatefulWidget {
  final VoidCallback onTap;
  final double animatedContainerWidth;
  final double smallContainerWidth;
  final String allText;
  final String dressedText;
  final InventoryController inventoryController;

  ToggleAnimatedSwitcher({
    required this.onTap,
    this.animatedContainerWidth = 156,
    this.smallContainerWidth = 80,
    this.allText = 'All',
    this.dressedText = 'Dressed',
    required this.inventoryController,
  });

  @override
  _ToggleAnimatedSwitcherState createState() => _ToggleAnimatedSwitcherState();
}

class _ToggleAnimatedSwitcherState extends State<ToggleAnimatedSwitcher> {
  var isEnabled = false;
  final animationDuration = const Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnabled = !isEnabled;
        });
        widget.onTap();

        if (isEnabled) {
          widget.inventoryController.setFilter('DRESSED');
        } else {
          widget.inventoryController.setFilter('ALL');
        }
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
          height: 36,
          width: widget.animatedContainerWidth,
          duration: animationDuration,
          decoration: BoxDecoration(
            color:
                isEnabled ? const Color(0xff1F1F32) : const Color(0xff1F1F32),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: AnimatedAlign(
                  duration: animationDuration,
                  alignment:
                      isEnabled ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    width: widget.smallContainerWidth,
                    height: 27,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xFF5A57AC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        isEnabled ? widget.dressedText : widget.allText,
                        style: AppStyles.plainText
                            .andWeight(FontWeight.bold)
                            .andColor(AppColors.text.primary),
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedAlign(
                duration: animationDuration,
                alignment:
                    isEnabled ? Alignment.centerLeft : Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    isEnabled ? '      ${widget.allText}' : widget.dressedText,
                    style: AppStyles.plainText
                        .andWeight(FontWeight.bold)
                        .andColor(AppColors.text.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
