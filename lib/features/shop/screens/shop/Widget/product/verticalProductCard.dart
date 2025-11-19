import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/product/discountContainer.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/product/productCard.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return PCardVContainer(
      color: UColors.pCardB,
      height: 260,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image Container
                  PCardVContainer(
                    height: 160,
                    width: 180,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        // Image
                        Center(
                          child: Image.asset(
                            UImages.banner1,
                            fit: BoxFit.cover,
                          ),
                        ),
                        // Discount
                        Positioned(
                          top: 15,
                          left: 10,
                          child: DiscountContainer(),
                        ),

                        Positioned(
                          top: -2,
                          right: 1,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Iconsax.heart_copy),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                  Text(
                    'IPhone 11 64 GB',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text('Apple', style: Theme.of(context).textTheme.labelMedium),
                  SizedBox(height: USizes.spaceBtwSections - 23),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '\$399- \$599',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(200, 29, 29, 29),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Icon(Iconsax.add_copy, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
