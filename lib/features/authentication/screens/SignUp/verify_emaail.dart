import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/screens/sucess_screen.dart';
import 'package:e_commerce/features/authentication/screens/Login/login.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => LoginScreen());
            },
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
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
                UTexts.verifyScreenTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                'unknown@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: USizes.spaceBtwItems * 0.5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  UTexts.verifyScreenSubtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElelvatedbutton(
                onPressed: () {
                  Get.to(
                    () => SuccessScreen(
                      title: UTexts.successScreenTitle,
                      subTitle: UTexts.successScreenSubtitle,
                      image: UImages.successImage,
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                    ),
                  );
                },
                text: 'Continue',
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
