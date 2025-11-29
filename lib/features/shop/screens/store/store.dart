import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:e_commerce/common/styles/padding.dart';
import 'package:e_commerce/common/widgets/texts/brandName.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/UStorePrimaryHeader.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/brandCard.dart';
import 'package:e_commerce/features/shop/screens/store/Widget/brandsPrimaryContainer.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              expandedHeight: 350,
              flexibleSpace: Column(
                children: [
                  UStorePrimaryHeader(),

                  Padding(
                    padding: UPadding.screenPadding,
                    child: BrandsPrimaryContainer(),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Text('Scroll'),
      ),
    );
  }
}
