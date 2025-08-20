import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/Utils/helpers/device_helpers.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';
import 'package:e_commerce/features/authentication/controllers/OnBoarding/onboardingController.dart';
import 'package:e_commerce/features/authentication/pages/Onboarding/Widgets/onboardingDotNavigation.dart';
import 'package:e_commerce/features/authentication/pages/Onboarding/Widgets/onboardingNextButton.dart';
import 'package:e_commerce/features/authentication/pages/Onboarding/Widgets/onboardingPAge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Onboardingcontroller());
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnBoardingPage(
                  animationName: UImages.OnboardingAnimation1,
                  text: UTexts.Animation1Title,
                  text2: UTexts.Animation1SubTitle,
                ),
                OnBoardingPage(
                  animationName: UImages.OnboardingAnimation2,
                  text: UTexts.Animation2Title,
                  text2: UTexts.Animation2SubTitle,
                ),
                OnBoardingPage(
                  animationName: UImages.OnboardingAnimation3,
                  text: UTexts.Animation3Title,
                  text2: UTexts.Animation3SubTitle,
                ),
              ],
            ),
            OnBoardingDotNavigation(),
            OnBoardingNextButton(),
            Positioned(
              top: UDeviceHelper.getAppBarHeight(),
              right: 0,
              child: TextButton(
                onPressed: controller.skipPage,
                child: Text("Skip"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
