import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UPadding.screenPadding,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(UImages.successImage, fit: BoxFit.fill),
              SizedBox(height: USizes.spaceBtwSections),
              Text(
                UTexts.successScreenTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  UTexts.successScreenSubtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElelvatedbutton(
                onPressed: () {
                  Get.to(() => SuccessScreen());
                },
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
