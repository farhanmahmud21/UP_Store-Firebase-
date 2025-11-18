import 'package:e_commerce/Utils/Constains/Colors.dart';

import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/features/shop/controllers/homeController.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/banner/homeBanner.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/header/Uheader.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/product/productCard.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(Homecontroller());
  final page = PageController();
  @override
  Widget build(BuildContext context) {
    final banners = [
      UImages.banner1,
      UImages.banner2,
      UImages.banner3,
      UImages.banner4,
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UHeader(),
            SizedBox(height: USizes.spaceBtwSections * 0.3),
            uHomeBanner(controller: controller, banners: banners),
            SizedBox(height: USizes.spaceBtwItems * 00.2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text(
                    'Popular Products',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text('View All')),
                ],
              ),
            ),

            PCardVContainer(
              color: UColors.pCardB,
              height: 260,
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PCardVContainer(
                            height: 160,
                            width: 180,
                            color: Colors.white,
                            child: Image.asset(UImages.successImage),
                          ),
                          SizedBox(height: USizes.spaceBtwItems / 2),
                          Text(
                            'IPhone 11 64 GB',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            'Apple',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          SizedBox(height: USizes.spaceBtwSections - 23),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '\$399- \$599',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),

                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(200, 29, 29, 29),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: Icon(Iconsax.add_copy, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
