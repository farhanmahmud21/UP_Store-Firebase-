import 'package:e_commerce/features/authentication/screens/forgot_password/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ULoginCheckbox extends StatelessWidget {
  const ULoginCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text('Remember Me'),
          ],
        ),
        TextButton(
          onPressed: () {
            Get.to(() => UForgotPasswordScreen());
          },
          child: Text('Forgot Password'),
        ),
      ],
    );
  }
}
