import 'package:flutter/material.dart';

class UCircularContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Widget? child;
  const UCircularContainer({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    this.child, // with this i can pass the parameter only to those widget which it needs child
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(500),
        color: color,
      ),
      child: child,
    );
  }
}
