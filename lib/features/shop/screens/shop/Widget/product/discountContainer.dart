import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:flutter/material.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: UColors.yellow,
      ),
      child: Center(
        child: Text('49%', style: Theme.of(context).textTheme.labelLarge),
      ),
    );
  }
}
