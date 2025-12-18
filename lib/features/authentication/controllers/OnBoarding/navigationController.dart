import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/features/shop/screens/shop/home.dart';
import 'package:e_commerce/features/shop/screens/store/store.dart';
import 'package:e_commerce/features/shop/screens/wishlist/wishlistScreen.dart';

import 'package:get/get.dart';

class Navigationcontroller extends GetxController {
  static Navigationcontroller get instance => Get.find();
  RxInt uselected = 0.obs;
  var selectedPage = [
    HomeScreen(),
    StoreScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  void navigateTohome() {
    uselected.value = 0;
  }
}
