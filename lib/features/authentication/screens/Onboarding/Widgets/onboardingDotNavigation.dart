import 'package:e_commerce/Utils/helpers/device_helpers.dart';
import 'package:e_commerce/features/authentication/controllers/OnBoarding/onboardingController.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Onboardingcontroller.instance;
    ;
    return Positioned(
      bottom: UDeviceHelper.getBottomNavigationBarHeight() * 4,
      left: UDeviceHelper.getScreenWidth(context) / 3,
      right: UDeviceHelper.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationIndex,
        effect: ExpandingDotsEffect(dotHeight: 6),
        count: 3,
      ),
    );
  }
}
