import 'package:flutter/material.dart';

class ThemeAnimatedSwitchToggle extends StatefulWidget {
  final VoidCallback onTap;

  ThemeAnimatedSwitchToggle({required this.onTap});

  @override
  _ThemeAnimatedSwitchToggleState createState() =>
      _ThemeAnimatedSwitchToggleState();
}

class _ThemeAnimatedSwitchToggleState extends State<ThemeAnimatedSwitchToggle> {
  var isEnabled = false;
  final animationDuration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEnabled = !isEnabled;
        });
        widget.onTap();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
          height: 36,
          width: 156,
          duration: animationDuration,
          decoration: BoxDecoration(
            color:
                isEnabled ? const Color(0xff1F1F32) : const Color(0xff1F1F32),
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                duration: animationDuration,
                alignment:
                    isEnabled ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 80,
                  height: 27,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xFF5A57AC),
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                  child: Center(
                    child: Text(
                      isEnabled ? 'Dressed' : 'All',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
                    isEnabled ? '      All' : 'Dressed',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
