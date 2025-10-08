import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/buttons/elelvatedButton.dart';
import 'package:flutter/material.dart';
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
        Row(
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: UTexts.signupFooter,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: UColors.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: 'Terms of use',
                        style: TextStyle(
                          color: UColors.primary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems),
        UElelvatedbutton(onPressed: () {}, text: 'Create Account'),
      ],
    );
  }
}
