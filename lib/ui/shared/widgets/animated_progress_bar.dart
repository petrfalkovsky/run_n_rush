// ignore_for_file: unnecessary_const, unnecessary_import, library_private_types_in_public_api, no_leading_underscores_for_local_identifiers

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

String _defaultFormatValue(double value, int? fixed) {
  if (fixed != null) {
    return value.toStringAsFixed(fixed);
  } else {
    return value.toStringAsFixed(value.truncateToDouble() == value ? 0 : 2);
  }
}

class AnimatedProgressBar extends StatefulWidget {
  AnimatedProgressBar({
    Key? key,
    this.currentValue = 0,
    this.maxValue = 100,
    this.size = 30,
    this.animatedDuration = const Duration(milliseconds: 300),
    this.direction = Axis.horizontal,
    this.verticalDirection = VerticalDirection.down,
    BorderRadiusGeometry? borderRadius,
    this.border,
    this.backgroundColor = const Color(0x00FFFFFF),
    this.progressColor = const Color(0xFFFA7268),
    this.changeColorValue,
    this.changeProgressColor = const Color(0xFF5F4B8B),
    this.formatValue = _defaultFormatValue,
    this.formatValueFixed,
    this.displayText,
    this.displayTextStyle =
        const TextStyle(color: const Color(0xFFFFFFFF), fontSize: 12),
    this.progressGradient,
    this.icon,
    this.text,
  })  : _borderRadius = borderRadius ?? BorderRadius.circular(8),
        super(key: key);

  final double currentValue;
  final double maxValue;
  final double size;
  final Duration animatedDuration;
  final Axis direction;
  final VerticalDirection verticalDirection;
  final BorderRadiusGeometry _borderRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final Color progressColor;
  final int? changeColorValue;
  final Color changeProgressColor;
  final String Function(double value, int? fixed) formatValue;
  final int? formatValueFixed;
  final String? displayText;
  final TextStyle displayTextStyle;
  final Gradient? progressGradient;
  final Widget? icon;
  final Widget? text;

  @override
  _AnimatedProgressBarState createState() => _AnimatedProgressBarState();
}

class _AnimatedProgressBarState extends State<AnimatedProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: widget.animatedDuration, vsync: this);
    _animation =
        Tween<double>(begin: 0, end: widget.currentValue).animate(_controller)
          ..addListener(() {
            setState(() {});
          });
    _controller.forward(from: 0);
  }

  @override
  void didUpdateWidget(covariant AnimatedProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentValue != oldWidget.currentValue) {
      _controller.reset();
      _animation =
          Tween<double>(begin: 0, end: widget.currentValue).animate(_controller)
            ..addListener(() {
              setState(() {});
            });
      _controller.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    Color progressColor = widget.progressColor;

    if (widget.changeColorValue != null) {
      final _colorTween = ColorTween(
        begin: widget.progressColor,
        end: widget.changeProgressColor,
      );

      progressColor =
          _colorTween.transform(_animation.value / widget.maxValue)!;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        width: widget.direction == Axis.vertical ? widget.size : null,
        height: widget.direction == Axis.horizontal ? widget.size : null,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: widget._borderRadius,
          border: widget.border,
        ),
        child: Stack(
          children: [
            Flex(
              direction: widget.direction,
              verticalDirection: widget.verticalDirection,
              children: <Widget>[
                Expanded(
                  flex: (_animation.value / widget.maxValue * 100).toInt(),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: widget.progressGradient != null
                              ? null
                              : progressColor,
                          gradient: widget.progressGradient,
                          borderRadius: widget._borderRadius,
                          border: widget.border,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: widget.icon,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex:
                      100 - (_animation.value / widget.maxValue * 100).toInt(),
                  child: Container(),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18, top: 5),
                  child: widget.text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
