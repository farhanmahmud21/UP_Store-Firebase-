import 'package:flutter/material.dart';

class UCircularContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  const UCircularContainer({
    super.key,
    required this.height,
    required this.width,
    required this.color,
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
    );
  }
}
