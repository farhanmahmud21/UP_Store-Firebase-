import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:flutter/material.dart';

class URoundedProductView extends StatelessWidget {
  const URoundedProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: Center(child: Image.asset(UImages.iphone_1)),
    );
  }
}
