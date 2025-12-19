import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/authentication/controllers/OnBoarding/navigationController.dart';

import 'package:e_commerce/features/shop/screens/home/Widget/product/verticalProductCard.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/uGridStore.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Navigationcontroller());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              controller.navigateTohome();
            },
            icon: Icon(
              (Iconsax.add_copy),
              color: UColors.black,
              fontWeight: FontWeight.bold,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: UGridViewStore(verticalCard: VerticalProductCard()),
        ),
      ),
    );
  }
}
