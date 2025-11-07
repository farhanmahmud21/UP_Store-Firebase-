import 'package:carousel_slider/carousel_slider.dart';

import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/features/shop/controllers/homeController.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/Uheader.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      body: Column(
        children: [
          UHeader(),
          SizedBox(height: USizes.spaceBtwSections * 0.3),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: CarouselSlider(
              carouselController: controller.carousel,

              items: banners
                  .map(
                    (img) => ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),

                      child: Image.asset(img, fit: BoxFit.fill),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, reason) => controller.updateDot(index),
              ),
            ),
          ),

          Obx(
            () => SmoothPageIndicator(
              effect: ExpandingDotsEffect(dotHeight: 10),

              controller: PageController(
                initialPage: controller.currentIndex.value,
              ),
              count: banners.length,
            ),
          ),
        ],
      ),
    );
  }
}
