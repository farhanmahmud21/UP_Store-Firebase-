import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';

import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Profile'), centerTitle: false),

      body: SafeArea(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EditAvatar(image: UImages.sportsCatagoryImage),

              SizedBox(height: 20),
              Divider(color: Colors.grey),
              // Account Settings
              SizedBox(height: 20),
              Text(
                'Account Settings',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Asettings(title: 'Name', valueName: 'Unknown Pro'),
              Asettings(title: 'Username', valueName: 'unknown_pro111'),
              Divider(color: Colors.grey),

              // Profile Settings
              Text(
                'Profile Settings',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Asettings(
                title: 'User ID',
                valueName: '2322345',
                icon: Icons.copy,
              ),
              Asettings(title: 'Email', valueName: 'unknownpro@gmail.com'),
              Asettings(title: 'Phone Number', valueName: '+921234567890'),
              Asettings(title: 'Gender', valueName: 'Male'),
              Divider(color: Colors.grey),
              SizedBox(height: 10),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Close Account',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Asettings extends StatelessWidget {
  final String title;
  final String valueName;
  final IconData icon;
  const Asettings({
    super.key,
    required this.title,
    required this.valueName,
    this.icon = Icons.arrow_forward_ios_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Spacer(),
        Text(valueName, style: Theme.of(context).textTheme.titleMedium),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(icon)),
      ],
    );
  }
}

class EditAvatar extends StatelessWidget {
  final String image;
  const EditAvatar({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
          border: Border.all(width: 4, color: UColors.buttonPrimary),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(radius: 70, backgroundImage: AssetImage(image)),

            IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.edit_copy,
                size: USizes.iconLg,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
