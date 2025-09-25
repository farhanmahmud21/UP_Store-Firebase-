import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:flutter/material.dart';

class ULoginSocialButton extends StatelessWidget {
  const ULoginSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                UImages.googleIcon,
                height: USizes.iconLg,
                width: USizes.iconLg,
              ),
            ),
            SizedBox(width: USizes.spaceBtwItems),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                UImages.fbIcon,

                height: USizes.iconLg,
                width: USizes.iconLg,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
