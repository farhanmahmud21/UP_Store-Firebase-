import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/features/authentication/pages/Onboarding/Widgets/onboardingPAge.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
                animationName: UImages.OnboardingAnimation1,
                text: UTexts.Animation3Title,
                text2: UTexts.Animation3SubTitle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
