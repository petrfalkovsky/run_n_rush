import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:run_n_rush/ui/shared/all_shared.dart';

/// пример использования
/// BlurredAvatar(
///   containerSize: 152,
///   positionInsets: const EdgeInsets.all(7),
///   innerContainer: 138,
///   borderColor: Colors.white.withOpacity(0.3),
///   avatarSize: 59,
/// )

class BlurredAvatar extends StatelessWidget {
  final double containerSize;
  final EdgeInsets positionInsets;
  final double innerContainer;
  final double avatarSize;
  final Color borderColor;

  const BlurredAvatar({
    Key? key,
    required this.containerSize,
    required this.positionInsets,
    required this.innerContainer,
    required this.avatarSize,
    required this.borderColor,
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
            /// заблюренный круг
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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF01B8FF),
            ),
            child: Center(
              child: Image.asset(
                AppIcons.avatar,
                width: avatarSize,
                height: avatarSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
