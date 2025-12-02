import 'package:e_commerce/Utils/Constains/images.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 108,
      decoration: BoxDecoration(
        color: const Color.fromARGB(50, 158, 158, 158),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Image.asset(
          UImages.fbIcon,
          fit: BoxFit.contain,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
