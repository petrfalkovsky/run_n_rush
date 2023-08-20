import 'package:flutter/material.dart';

class DefaultContainer extends StatefulWidget {
  final Widget? child;
  final double? borderRadius;
  final double? width;
  const DefaultContainer({
    Key? key,
    this.child,
    this.borderRadius,
    this.width,
  }) : super(key: key);

  @override
  DefaultContainerState createState() => DefaultContainerState();
}

class DefaultContainerState extends State<DefaultContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 34),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 15,
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
