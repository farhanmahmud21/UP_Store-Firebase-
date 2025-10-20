import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/Utils/Constains/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UCartIcon extends StatelessWidget {
  const UCartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Iconsax.shopping_bag_copy, color: Colors.white),
        ),
        Positioned(
          right: 6,
          top: 4,
          child: Container(
            height: USizes.iconSm,
            width: USizes.iconSm,
            decoration: BoxDecoration(
              color: UColors.black,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '1',
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.apply(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
