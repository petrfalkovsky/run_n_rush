import 'package:flutter/material.dart';

class CircularSwitcher extends StatelessWidget {
  final bool value;

  const CircularSwitcher({
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const unselectedColor = Color(0xFFE9E9E9);
    const selectedColor = Color(0xFF4AAE3A);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: 24.0,
      height: 24.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: value ? selectedColor : unselectedColor,
          width: value ? 6.0 : 2.0,
        ),
      ),
    );
  }
}
