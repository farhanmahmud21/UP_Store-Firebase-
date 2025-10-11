import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  final String animationName;
  final String text;
  final String text2;

  const OnBoardingPage({
    super.key,
    required this.animationName,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        // top: UDeviceHelper.getAppBarHeight(),
        top: USizes.appBarHeight,
      ),
      child: Column(
        children: [
          Lottie.asset(animationName),
          Text(text, style: Theme.of(context).textTheme.headlineMedium),
          Text(
            text2,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
