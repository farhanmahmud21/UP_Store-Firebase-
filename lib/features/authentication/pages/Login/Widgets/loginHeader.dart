import 'package:e_commerce/Utils/Constains/texts.dart';
import 'package:flutter/material.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          UTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          UTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
