import 'package:e_commerce/features/shop/screens/shop/home.dart';
import 'package:e_commerce/features/shop/screens/store/store.dart';

import 'package:get/get.dart';

class Navigationcontroller extends GetxController {
  static Navigationcontroller get instance => Get.find();
  RxInt uselected = 0.obs;
  var selectedPage = [HomeScreen(), StoreScreen()];
}
