import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/helpers/device_helpers.dart';
import 'package:e_commerce/common/widgets/container/UcircularContainer.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/UCustomRoundedEdges.dart';

import 'package:flutter/material.dart';

class UPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const UPrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomRoundedEdges(),
      child: Container(
        height: 320,
        color: UColors.primary,
        child: Stack(
          children: [
            Positioned(
              right: -160,
              top: -150,
              child: UCircularContainer(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              right: -250,
              top: 50,
              child: UCircularContainer(
                height: UDeviceHelper.getScreenHeight(context) * 0.4,
                width: UDeviceHelper.getScreenHeight(context) * 0.4,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
