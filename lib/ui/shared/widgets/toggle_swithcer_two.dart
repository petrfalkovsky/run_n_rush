// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

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

  /// скорость анимации
  final animationDuration = const Duration(milliseconds: 300);

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
                  /// неактивный контейнер - настроить отступ внутри слова от кнопки
                  padding: const EdgeInsets.only(left: 6, right: 14),
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
