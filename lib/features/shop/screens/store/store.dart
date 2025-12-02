import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';

import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/product/verticalProductCard.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/UStorePrimaryHeader.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/brandCard.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/brandsPrimaryContainer.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/catagoryContainer.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/productCard.dart';

import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: false,
                expandedHeight: 360,

                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(65),

                  child: Container(
                    height: 55,
                    color: Colors.white,
                    child: TabBar(
                      isScrollable: true,
                      dividerColor: const Color.fromARGB(28, 0, 0, 0),
                      labelColor: UColors.primary,
                      indicatorColor: UColors.primary,
                      unselectedLabelColor: UColors.darkGrey,

                      tabs: [
                        Tab(child: Text('Sports')),

                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Electrons')),
                        Tab(child: Text('Clothes')),
                        Tab(child: Text('Accessories')),
                      ],
                    ),
                  ),
                ),
                flexibleSpace: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      UStorePrimaryHeader(),

                      Padding(
                        padding: UPadding.screenPadding / 2,
                        child: BrandsPrimaryContainer(),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: UPadding.screenPadding,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsetsGeometry.only(bottom: 20)),
                      CatagoryContainer(),
                      SizedBox(height: USizes.defaultSpace / 2),
                      CatagoryContainer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'You might like',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          TextButton(onPressed: () {}, child: Text('View All')),
                        ],
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 260,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 6,
                        itemBuilder: (context, index) => VerticalProductCard(),
                      ),
                    ],
                  ),
                ),
              ),
              Text('Furniture'),
              Text('Electrons'),
              Text('Clothes'),
              Text('Acessories'),
            ],
          ),
        ),
      ),
    );
  }
}
