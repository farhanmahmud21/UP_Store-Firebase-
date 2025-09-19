import 'package:e_commerce/features/authentication/pages/Login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Onboardingcontroller extends GetxController {
  static Onboardingcontroller get instance => Get.find();

  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  void dotNavigationIndex(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(LoginScreen());
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  void skipPage() {
    if (currentIndex.value != 2) {
      currentIndex.value = 2;
      pageController.jumpToPage(2);
    }
  }
}
