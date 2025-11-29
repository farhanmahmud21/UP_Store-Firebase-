import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class brandNamewithVerified extends StatelessWidget {
  final String brandName;

  const brandNamewithVerified({super.key, required this.brandName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(brandName, style: Theme.of(context).textTheme.labelLarge),
        SizedBox(width: 2),
        Icon(Iconsax.verify, size: 15, color: UColors.buttonPrimary),
      ],
    );
  }
}
