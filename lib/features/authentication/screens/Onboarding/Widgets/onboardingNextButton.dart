import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/helpers/device_helpers.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';

import 'package:e_commerce/features/authentication/controllers/OnBoarding/onboardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Onboardingcontroller.instance;
    return Positioned(
      bottom: USizes.spaceBtwItems,
      left: 0,
      right: 0,

      child: Obx(
        () => UElelvatedbutton(
          onPressed: () {
            controller.nextPage();
          },
          text: controller.currentIndex.value == 2 ? 'Getting Started' : 'Next',
        ),
      ),
    );
  }
}
