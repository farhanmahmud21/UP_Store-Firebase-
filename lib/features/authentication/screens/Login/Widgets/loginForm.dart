import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/helpers/device_helpers.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/features/authentication/screens/Login/Widgets/loginFooter.dart';
import 'package:e_commerce/features/authentication/screens/SignUp/signup.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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

        ULoginCheckbox(),

        SizedBox(height: USizes.spaceBtwSections * .5),
        // Buttons
        Column(
          children: [
            UElelvatedbutton(
              onPressed: () {
                Get.to(() => NavigationMenu());
              },
              text: 'Sign in',
            ),
            SizedBox(height: USizes.spaceBtwItems * 0.5),
            SizedBox(
              width: UDeviceHelper.getScreenWidth(context),
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => SignUpScreen());
                },
                child: Text('Create Account'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
