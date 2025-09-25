import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/outlined_button_theme.dart';
import 'package:e_commerce/Utils/helpers/device_helpers.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/authentication/pages/Login/Widgets/loginDivider.dart';
import 'package:e_commerce/features/authentication/pages/Login/Widgets/loginFooter.dart';
import 'package:e_commerce/features/authentication/pages/Login/Widgets/loginForm.dart';
import 'package:e_commerce/features/authentication/pages/Login/Widgets/loginHeader.dart';
import 'package:e_commerce/features/authentication/pages/Login/Widgets/loginSocial.dart';
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

            // Footer

            //Remember Me
            ULoginFooter(),
            SizedBox(height: USizes.spaceBtwSections * .5),
            // Buttons
            Column(
              children: [
                UElelvatedbutton(onPressed: () {}, text: 'Sign in'),
                SizedBox(height: USizes.spaceBtwItems * 0.5),
                SizedBox(
                  width: UDeviceHelper.getScreenWidth(context),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Create Account'),
                  ),
                ),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections),

            //Or Sign in With
            ULoginDivider(title: 'Or Sign With'),
            SizedBox(height: USizes.spaceBtwItems),
            // Google Icon
            ULoginSocialButton(),
          ],
        ),
      ),
    );
  }
}
