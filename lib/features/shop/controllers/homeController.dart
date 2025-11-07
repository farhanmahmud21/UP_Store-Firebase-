import 'package:carousel_slider/carousel_slider.dart';

import 'package:get/get.dart';

class Homecontroller extends GetxController {
  Homecontroller get instance => Get.find();
  final carousel = CarouselSliderController();

  RxInt currentIndex = 0.obs;

  void updateDot(index) {
    currentIndex.value = index;
  }
}
