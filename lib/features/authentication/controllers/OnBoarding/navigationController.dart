import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Navigationcontroller extends GetxController {
  static Navigationcontroller get instance => Get.find();
  RxInt uselected = 0.obs;
}
