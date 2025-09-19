import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  UTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  UTexts.loginSubTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections),
            //Formm
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right_copy),
                    hintText: 'E-mail',
                  ),
                ),
                SizedBox(height: USizes.spaceBtwInputFields),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    hintText: 'Password',
                    suffixIcon: Icon(Iconsax.eye),
                  ),
                ),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections * 00.5),

            // Footer

            //Remember Me
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text('Remember Me'),
                  ],
                ),
                TextButton(onPressed: () {}, child: Text('Forgot Password')),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections * .5),
            // Buttons
            Column(
              children: [
                UElelvatedbutton(onPressed: () {}, text: 'Sign in'),
                SizedBox(height: USizes.spaceBtwItems * 0.5),
                UElelvatedbutton(onPressed: () {}, text: 'Create Account'),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections),

            //Or Sign in With
            Row(
              children: [
                Expanded(child: Divider(indent: 60, endIndent: 5)),
                Text('Or Sign in With'),
                Expanded(child: Divider(indent: 5, endIndent: 60)),
              ],
            ),
            // Google Icon
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
