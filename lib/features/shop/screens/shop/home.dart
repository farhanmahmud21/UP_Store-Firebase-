import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/common/widgets/text_field/search_bar.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/appbar.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/uPrimaryHeaderContainer.dart';
import 'package:e_commerce/utils/helpers/device_helpers.dart';

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: UDeviceHelper.getScreenHeight(context) * .,
          //   color: Colors.red,
          // ),
          UPrimaryHeaderContainer(child: UCustomAppBar()),

          Positioned(
            top: 300,
            right: USizes.spaceBtwSections,
            left: USizes.spaceBtwSections,
            child: USearchBar(),
          ),
        ],
      ),
    );
  }
}
