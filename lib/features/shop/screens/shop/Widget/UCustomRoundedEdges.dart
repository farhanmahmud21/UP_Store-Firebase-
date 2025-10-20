import 'dart:ui';

import 'package:flutter/material.dart';

class UCustomRoundedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(40, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(
      size.width - 40,
      size.height,
      size.width,
      size.height - 40,
    );
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
