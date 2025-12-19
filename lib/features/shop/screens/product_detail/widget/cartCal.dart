import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartCal extends StatelessWidget {
  const CartCal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade600,
            alignment: Alignment.center,
            elevation: 20,
            fixedSize: Size(50, 50),
            foregroundColor: Colors.white,
          ),

          onPressed: () {},
          icon: Icon(Iconsax.minus_copy, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Text('2', style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(width: 10),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.black,
            alignment: Alignment.center,
            elevation: 20,
            fixedSize: Size(50, 50),
            foregroundColor: Colors.white,
          ),

          onPressed: () {},
          icon: Icon(Iconsax.add_copy, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
