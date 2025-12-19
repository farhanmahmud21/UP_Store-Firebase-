import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/features/shop/controllers/homeController.dart';
import 'package:e_commerce/features/shop/screens/home/Widget/banner/homeBanner.dart';
import 'package:e_commerce/features/shop/screens/home/Widget/header/Uheader.dart';
import 'package:e_commerce/features/shop/screens/home/Widget/product/popularProducts.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: uHomeBanner(controller: controller, banners: banners),
            ),
            SizedBox(height: USizes.spaceBtwItems * 00.2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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

            // SizedBox(
            //   height: MediaQuery.sizeOf(context).height / 2,
            //   width: MediaQuery.sizeOf(context).width,
            //   child: PopularProducts(),
            // ),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}
