import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    this.onPressed,
    this.bgColor,
    this.child,
    this.title,
  }) : super(key: key);

  final String? title;
  final Color? bgColor;
  final VoidCallback? onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(bgColor),
      ),
      child: child ?? Text(title ?? ''),
    );
  }
}
