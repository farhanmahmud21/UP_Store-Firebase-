import 'package:e_commerce/common/widgets/texts/brandName.dart';
import 'package:flutter/material.dart';

class brandCard extends StatelessWidget {
  final BoxBorder? borderColor;
  const brandCard({super.key, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 170,
      decoration: BoxDecoration(
        border: borderColor,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset('assets/logo/black_app_logo.png'),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                brandNamewithVerified(brandName: 'Bata'),
                Text(
                  '172 Products',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
