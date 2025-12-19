import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/features/shop/screens/home/home.dart';
import 'package:e_commerce/features/shop/screens/product_detail/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 400, child: Image.asset(UImages.iphone_2)),

        Positioned(
          bottom: 10,
          child: SizedBox(
            height: 70,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  InkWell(child: URoundedProductView()),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            onPressed: () {
              Get.off(() => HomeScreen());
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),

        Align(
          alignment: Alignment.topRight,
          child: IconButton(onPressed: () {}, icon: Icon(Iconsax.heart_copy)),
        ),
      ],
    );
  }
}
