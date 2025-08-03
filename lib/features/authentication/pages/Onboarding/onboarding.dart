import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(children: [Lottie.asset(UImages.OnboardingAnimation1)]),
        ],
      ),
    );
  }
}
