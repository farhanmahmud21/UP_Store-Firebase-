import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';

import 'package:e_commerce/features/shop/screens/shop/Widget/header/uPrimaryHeaderContainer.dart';
import 'package:flutter/material.dart';

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
                Text(
                  'Unknown Pro',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'demo@gmail.com',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(height: 20),
                Text('My Addresses'),
                Text('Set shopping delivery addresses'),
                SizedBox(height: 10),
                Text('My Cart'),
                Text('Add remove products and movve to checkout'),

                SizedBox(height: 10),
                Text('My Orders'),
                Text('In-progress and Completed Orders'),

                SizedBox(height: 20),
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
