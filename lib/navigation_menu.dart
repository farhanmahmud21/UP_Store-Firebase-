import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Theme/widgets_theme/text_theme.dart';
import 'package:e_commerce/features/authentication/controllers/OnBoarding/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  final controller = Get.put(Navigationcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: UColors.light,
          indicatorColor: UColors.black.withValues(alpha: 0.1),
          selectedIndex: controller.uselected.value,
          onDestinationSelected: (index) => controller.uselected.value = index,
          destinations: [
            NavigationDestination(
              icon: Icon(Iconsax.home_2_copy),
              label: 'Home',
            ),
            NavigationDestination(icon: Icon(Iconsax.shop_copy), label: 'Shop'),
            NavigationDestination(
              icon: Icon(Iconsax.heart_copy),
              label: 'WishList',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user_copy),
              label: 'Profile',
            ),
          ],
        ),
      ),

      body: Obx(() => controller.selectedPage[controller.uselected.value]),
    );
  }
}
