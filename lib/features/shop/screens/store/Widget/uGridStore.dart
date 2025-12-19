import 'package:e_commerce/features/shop/screens/home/Widget/product/verticalProductCard.dart';
import 'package:flutter/material.dart';

class UGridViewStore extends StatelessWidget {
  final Widget verticalCard;
  const UGridViewStore({super.key, required this.verticalCard});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
      itemBuilder: (context, index) => verticalCard,
    );
  }
}
