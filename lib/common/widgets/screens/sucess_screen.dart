import 'package:e_commerce/Utils/Constains/sizes.dart';

import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';

import 'package:e_commerce/common/styles/padding.dart';

import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final VoidCallback onPressed;

  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onPressed,
  });

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
              Image.asset(image, fit: BoxFit.fill),
              SizedBox(height: USizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElelvatedbutton(onPressed: onPressed, text: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }
}
