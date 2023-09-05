import 'package:flutter/material.dart';

class CustomModal {
  static void show(
    BuildContext context, {
    Widget? child,
    Color color = Colors.grey,
    double heightFactor = 0.85,
    double borderRadius = 30.0,
    AlignmentGeometry alignment = Alignment.bottomCenter,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      elevation: 0,
      barrierColor: Colors.black.withOpacity(0.8),
      backgroundColor: Colors.black.withOpacity(0.5),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * heightFactor,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius),
          ),
        ),
        child: Align(
          alignment: alignment,
          child: child ??
              const Text(
                "Вставь child в модальное окно контент вот так \n\nchild: Column(\nchildren: [\n Text('data'),\n Text('data'),\n  ],\n ),",
                textAlign: TextAlign.center,
              ),
        ),
      ),
    );
  }
}
