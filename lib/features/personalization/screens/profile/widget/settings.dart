import 'package:e_commerce/Utils/Constains/Colors.dart';
import 'package:flutter/material.dart';

class A_SettingsE extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const A_SettingsE({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: UColors.info),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            Text(subTitle, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ],
    );
  }
}
