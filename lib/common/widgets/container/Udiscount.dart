import 'package:flutter/material.dart';

class DiscountContainer extends StatelessWidget {
  final double hg;
  final double wg;
  final Color clr;
  final String text;
  final BoxBorder? isBorder;
  final Color? textColor;

  const DiscountContainer({
    super.key,
    required this.hg,
    required this.wg,
    this.clr = Colors.yellow,
    required this.text,
    this.isBorder,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hg,
      width: wg,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: isBorder,
        color: clr,
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.labelLarge!.copyWith(color: textColor),
        ),
      ),
    );
  }
}
