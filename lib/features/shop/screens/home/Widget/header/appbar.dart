import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/common/widgets/icon/UcartIcon.dart';
import 'package:flutter/material.dart';

class UCustomAppBar extends StatelessWidget {
  const UCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: Theme.of(
                context,
              ).textTheme.labelMedium?.copyWith(color: UColors.white),
            ),
            Text(
              'Unknown Pro',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: UColors.white),
            ),
          ],
        ),
      ),
      centerTitle: false,
      actions: [UCartIcon()],
    );
  }
}
