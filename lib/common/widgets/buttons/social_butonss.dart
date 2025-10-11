import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:flutter/material.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            buildButton(UImages.googleIcon, () {}),
            SizedBox(width: USizes.spaceBtwItems),
            buildButton(UImages.fbIcon, () {}),
          ],
        ),
      ],
    );
  }

  // We can also use the exract widget we are using for learning
  Container buildButton(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {
          onPressed;
        },
        icon: Image.asset(image, height: USizes.iconLg, width: USizes.iconLg),
      ),
    );
  }
}
