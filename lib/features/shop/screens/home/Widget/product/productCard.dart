import 'package:flutter/material.dart';

class PCardVContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Color color;
  const PCardVContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: child,
    );
  }
}
