import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/common/widgets/icon/UcartIcon.dart';
import 'package:e_commerce/common/widgets/text_field/search_bar.dart';
import 'package:e_commerce/features/shop/screens/home/Widget/header/uPrimaryHeaderContainer.dart';
import 'package:flutter/material.dart';

class UStorePrimaryHeader extends StatelessWidget {
  const UStorePrimaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        UPrimaryHeaderContainer(
          height: 200,
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Store',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: UColors.white),
              ),
            ),
            centerTitle: false,
            actions: [UCartIcon()],
          ),
        ),
        //
        Positioned(
          top: 140,
          right: USizes.spaceBtwSections,
          left: USizes.spaceBtwSections,
          child: USearchBar(),
        ),
      ],
    );
  }
}
