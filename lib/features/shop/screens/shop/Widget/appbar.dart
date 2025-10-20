import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:e_commerce/common/widgets/icon/UcartIcon.dart';
import 'package:flutter/material.dart';

class UCustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
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
