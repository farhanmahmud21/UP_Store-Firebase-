import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';

import 'package:e_commerce/common/widgets/buttons/social_butonss.dart';

import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/SignUp/Widgets/signupForm.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          //Header
          children: [
            Text(
              UTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: USizes.spaceBtwSections),
            // Form
            SignupForm(),

            SizedBox(height: USizes.spaceBtwItems),
            UFormDivider(title: 'Or Sign Up With'),
            SizedBox(height: USizes.spaceBtwItems),
            USocialButtons(),
          ],
        ),
      ),
    );
  }
}
