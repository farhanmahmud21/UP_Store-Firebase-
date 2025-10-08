import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/authentication/pages/Login/Widgets/loginSocial.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.profile_2user_copy),
                      hintText: 'First Name',
                    ),
                  ),
                ),
                SizedBox(width: USizes.spaceBtwItems),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.profile_2user_copy),
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
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(UTexts.signuFooter),
                  ],
                ),
              ],
            ),
            SizedBox(height: USizes.spaceBtwItems),
            UElelvatedbutton(onPressed: () {}, text: 'Create Account'),
            SizedBox(height: USizes.spaceBtwItems),
            Row(
              children: [
                Expanded(child: Divider(indent: 60, endIndent: 5)),
                Text('Or Sign up With'),
                Expanded(child: Divider(indent: 5, endIndent: 60)),
              ],
            ),
            SizedBox(height: USizes.spaceBtwItems),
            ULoginSocialButton(),
          ],
        ),
      ),
    );
  }
}
