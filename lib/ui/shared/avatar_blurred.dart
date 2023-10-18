import 'dart:ui';
import 'package:flutter/material.dart';
import 'all_shared.dart';

class BlurredAvatar extends StatelessWidget {
  final double containerSize;
  final EdgeInsets positionInsets;
  final double innerContainer;
  final double avatarSize;
  final Color borderColor;
  final Color? containerColor;
  final Widget? customWidget;
  final String? imageUrl;

  const BlurredAvatar({
    Key? key,
    required this.containerSize,
    required this.positionInsets,
    required this.innerContainer,
    required this.avatarSize,
    required this.borderColor,
    this.containerColor,
    this.customWidget,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: borderColor.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        Positioned(
          left: positionInsets.left,
          top: positionInsets.top,
          child: Container(
            width: innerContainer,
            height: innerContainer,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: containerColor ?? const Color(0xFF01B8FF),
            ),
            child: Center(
              child: ClipOval(
                child: imageUrl != null
                    ? Image.network(
                        imageUrl ?? AppIcons.avatar,
                        width: innerContainer,
                        height: innerContainer,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        AppIcons.avatar,
                        width: avatarSize,
                        height: avatarSize,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
