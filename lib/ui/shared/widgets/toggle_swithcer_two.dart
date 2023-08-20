import 'package:flutter/material.dart';

/// todo обязательно переделать чтобы не повторять код
class AnimatedSwitcherWidgetTwo extends StatefulWidget {
  final VoidCallback onTap;
  final double animatedContainerWidth;
  final double smallContainerWidth;
  final String allText;
  final String dressedText;

  AnimatedSwitcherWidgetTwo({
    required this.onTap,
    this.animatedContainerWidth = 156,
    this.smallContainerWidth = 80,
    this.allText = 'All',
    this.dressedText = 'Dressed',
  });

  @override
  _AnimatedSwitcherWidgetTwoState createState() =>
      _AnimatedSwitcherWidgetTwoState();
}

class _AnimatedSwitcherWidgetTwoState extends State<AnimatedSwitcherWidgetTwo> {
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
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
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
                    isEnabled ? '    ${widget.allText}' : widget.dressedText,
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
