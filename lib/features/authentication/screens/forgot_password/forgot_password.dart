import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/authentication/screens/forgot_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UForgotPasswordScreen extends StatelessWidget {
  const UForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              UTexts.forgetTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              UTexts.forgetSubtitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: USizes.spaceBtwSections),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Iconsax.direct_right_copy),
              ),
            ),
            SizedBox(height: USizes.spaceBtwSections),
            UElelvatedbutton(
              onPressed: () {
                Get.to(() => ResetEmailScreen());
              },
              text: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
