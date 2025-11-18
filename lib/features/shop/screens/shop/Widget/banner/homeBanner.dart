import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controllers/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class uHomeBanner extends StatelessWidget {
  const uHomeBanner({
    super.key,
    required this.controller,
    required this.banners,
  });

  final Homecontroller controller;
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
