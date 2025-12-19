import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';

import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/buttons/elelvatedButton.dart';
import 'package:e_commerce/common/widgets/container/UcircularContainer.dart';

import 'package:e_commerce/common/widgets/container/Udiscount.dart';

import 'package:e_commerce/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(15, 158, 158, 158),
            padding: EdgeInsets.all(20),
            child: ProductImage(),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: UPadding.screenPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DiscountContainer(hg: 20, wg: 35, text: '20%'),
                      SizedBox(width: 10),
                      Text(
                        '\$250',
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('\$150'),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_rounded),
                      ),
                    ],
                  ),
                  Text(
                    'Iphone 10',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Stock : ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        'In stock',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),

                        child: Center(
                          child: Image.asset(
                            UImages.appleBrand,
                            height: 35,
                            width: 35,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Bata',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.verified,
                        color: UColors.buttonPrimary,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Color',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      ColorCircle(color: Colors.white),
                      SizedBox(width: 10),

                      ColorCircle(color: Colors.black),
                      SizedBox(width: 10),
                      ColorCircle(color: UColors.buttonPrimary),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Storage',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),

                  Row(
                    children: [
                      DiscountContainer(
                        hg: 40,
                        wg: 80,
                        text: '64 GB',
                        isBorder: Border.all(),
                        clr: const Color.fromARGB(115, 177, 176, 176),
                        textColor: Colors.black38,
                      ),
                      SizedBox(width: 10),
                      DiscountContainer(
                        hg: 40,
                        wg: 80,
                        text: '128 GB',
                        isBorder: Border.all(),
                        clr: Colors.white,
                      ),
                      SizedBox(width: 10),
                      DiscountContainer(
                        hg: 40,
                        wg: 80,
                        text: '512 GB',
                        isBorder: Border.all(),
                        clr: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  UElelvatedbutton(onPressed: () {}, text: 'Check Out'),
                  SizedBox(height: 10),
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text('This is a product description of BATA Brannd Shoes. '),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [CartCal(), CartAdd()],
            ),
          ),
        ],
      ),
    );
  }
}
