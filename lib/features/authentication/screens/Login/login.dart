import 'package:e_commerce/Utils/Constains/sizes.dart';

import 'package:e_commerce/common/buttons/social_butonss.dart';

import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';

import 'package:e_commerce/features/authentication/screens/Login/Widgets/loginForm.dart';
import 'package:e_commerce/features/authentication/screens/Login/Widgets/loginHeader.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Header
            ULoginHeader(),
            SizedBox(height: USizes.spaceBtwSections),
            //Formm
            ULoginForm(),
            SizedBox(height: USizes.spaceBtwSections * 00.5),

            SizedBox(height: USizes.spaceBtwSections),

            //Or Sign in With
            UFormDivider(title: 'Or Sign With'),
            SizedBox(height: USizes.spaceBtwItems),
            // Google Icon
            USocialButtons(),
          ],
        ),
      ),
    );
  }
}
