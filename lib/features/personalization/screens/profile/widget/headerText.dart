import 'package:e_commerce/features/personalization/screens/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class headerText extends StatelessWidget {
  final String userName;

  final String mail;

  const headerText({super.key, required this.userName, required this.mail});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userName, style: Theme.of(context).textTheme.headlineSmall),
            Text(mail, style: Theme.of(context).textTheme.labelSmall),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Get.to(EditProfileScreen());
          },
          icon: Icon(Iconsax.edit_copy),
        ),
      ],
    );
  }
}
