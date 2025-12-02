import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/brandCard.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/productCard.dart';
import 'package:flutter/material.dart';

class CatagoryContainer extends StatelessWidget {
  const CatagoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: const Color.fromARGB(70, 0, 0, 0)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: UPadding.screenPadding / 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            brandCard(),
            SizedBox(height: USizes.defaultSpace / 2),

            Row(
              spacing: 5,
              children: [ProductCard(), ProductCard(), ProductCard()],
            ),
          ],
        ),
      ),
    );
  }
}
