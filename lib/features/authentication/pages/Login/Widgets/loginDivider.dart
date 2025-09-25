import 'package:flutter/material.dart';

class ULoginDivider extends StatelessWidget {
  final String title;
  const ULoginDivider({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(indent: 60, endIndent: 5)),
        Text(title),
        Expanded(child: Divider(indent: 5, endIndent: 60)),
      ],
    );
  }
}
