import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyCheckbox extends StatelessWidget {
  const PrivacyPolicyCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
