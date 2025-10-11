import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/authentication/screens/forgot_password/SuccesScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ResetEmailScreen extends StatelessWidget {
  const ResetEmailScreen({super.key});

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
              SvgPicture.asset(
                UImages.resetMailSent,
                fit: BoxFit.contain,
                height: 300,
                width: 60,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              Text(
                UTexts.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                'unknown@gmail.com',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  UTexts.resetPasswordSubtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElelvatedbutton(
                onPressed: () {
                  Get.to(() => SuccessScreen());
                },
                text: 'Done',
              ),
              SizedBox(height: USizes.spaceBtwItems / 4),
              TextButton(onPressed: () {}, child: Text('Resend Email')),
            ],
          ),
        ),
      ),
    );
  }
}
