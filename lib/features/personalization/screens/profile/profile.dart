import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/headerText.dart';
import 'package:e_commerce/features/personalization/screens/profile/widget/settings.dart';

import 'package:e_commerce/features/shop/screens/home/Widget/header/uPrimaryHeaderContainer.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          UPrimaryHeaderContainer(height: 130, child: Container()),
          Positioned(
            left: 140,
            top: 50,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 4, color: UColors.buttonPrimary),
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(UImages.successImage),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                headerText(
                  mail: 'unknownpro@gmail.com',
                  userName: 'Uknown Pro',
                ),

                SizedBox(height: 30),
                Text(
                  'Account Settings',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                A_SettingsE(
                  icon: Iconsax.home_1_copy,
                  title: 'My Addresses',
                  subTitle: 'Set shopping delivery addresses',
                ),

                SizedBox(height: 25),
                A_SettingsE(
                  icon: Iconsax.shopping_cart_copy,
                  title: 'My Cart',
                  subTitle: 'Add , remove product and move to checkout',
                ),
                SizedBox(height: 25),
                A_SettingsE(
                  icon: Iconsax.shopping_cart_copy,
                  title: 'My Orders',
                  subTitle: 'In-progrss and completed orders ',
                ),

                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      foregroundColor: UColors.black,
                    ),
                    onPressed: () {},
                    child: Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
