import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/common/widgets/container/UcircularContainer.dart';
import 'package:e_commerce/common/widgets/text_field/search_bar.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/appbar.dart';

import 'package:e_commerce/features/shop/screens/shop/Widget/uPrimaryHeaderContainer.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: UDeviceHelper.getScreenHeight(context) * .,
          //   color: Colors.red,
          // ),
          SizedBox(
            height: 360,
            child: UPrimaryHeaderContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UCustomAppBar(),
                  SizedBox(height: USizes.spaceBtwItems),

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Popular Categories',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall!.copyWith(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            SizedBox(width: 10),
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Column(
                          children: [
                            UCircularContainer(
                              color: UColors.white,
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                UImages.sportsCatagoryImage,
                                scale: 3,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: 60,
                              child: Text(
                                'Sports',
                                style: Theme.of(context).textTheme.labelSmall!
                                    .copyWith(color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 300,
            right: USizes.spaceBtwSections,
            left: USizes.spaceBtwSections,
            child: USearchBar(),
          ),
        ],
      ),
    );
  }
}
