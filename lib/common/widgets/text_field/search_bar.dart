import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      height: 60,
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 3.0,
            blurRadius: 4,
          ),
          BoxShadow(
            color: Colors.blue.withValues(alpha: 0.1),
            spreadRadius: 3.0,
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        spacing: 10,

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Iconsax.search_normal_1_copy, color: Colors.grey),
          Text('Search In Store', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
