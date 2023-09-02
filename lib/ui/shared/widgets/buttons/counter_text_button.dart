import 'dart:async';

import 'package:flutter/material.dart';

class CountdownButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String defaultButtonText;
  final String? customButtonText;

  const CountdownButton({
    Key? key,
    required this.onPressed,
    this.defaultButtonText = 'Sendcode',
    this.customButtonText,
  }) : super(key: key);

  @override
  CountdownButtonState createState() => CountdownButtonState();
}

class CountdownButtonState extends State<CountdownButton> {
  late String buttonText;
  bool counting = false;
  int countdown = 24;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    buttonText = widget.customButtonText ?? widget.defaultButtonText;
  }

  void startCountdown() {
    setState(() {
      buttonText = '$countdown';
      counting = true;
    });

    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        countdown--;
        buttonText = '$countdown';
      });

      if (countdown == 0) {
        timer.cancel();
        setState(() {
          buttonText = widget.customButtonText ?? widget.defaultButtonText;
          counting = false;
          countdown = 24;
        });
      }
    });
  }

  @override
  void dispose() {
    if (timer.isActive) {
      timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: counting
          ? null
          : () {
              widget.onPressed();
              startCountdown();
            },
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
