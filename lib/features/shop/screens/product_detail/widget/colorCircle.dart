import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;

  const ColorCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
