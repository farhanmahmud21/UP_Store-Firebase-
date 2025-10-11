import 'package:e_commerce/Utils/Constains/sizes.dart';

import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/features/authentication/screens/SignUp/Widgets/privacyPolicyChecBox.dart';
import 'package:e_commerce/features/authentication/screens/SignUp/verify_emaail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  hintText: 'First Name',
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  hintText: 'Last Name',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right_copy),
            hintText: 'Email',
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call_copy),
            hintText: 'Phone Number',
          ),
        ),

        SizedBox(height: USizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            hintText: 'Password',
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        PrivacyPolicyCheckbox(),
        SizedBox(height: USizes.spaceBtwItems),
        UElelvatedbutton(
          onPressed: () {
            Get.to(() => VerifyEmailScreen());
          },
          text: 'Create Account',
        ),
      ],
    );
  }
}
