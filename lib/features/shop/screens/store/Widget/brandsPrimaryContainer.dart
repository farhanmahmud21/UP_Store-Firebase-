import 'package:e_commerce/features/shop/screens/store/Widget/brandCard.dart';
import 'package:flutter/material.dart';

class BrandsPrimaryContainer extends StatelessWidget {
  const BrandsPrimaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Brands', style: Theme.of(context).textTheme.headlineSmall),
            Spacer(),
            TextButton(onPressed: () {}, child: Text('View All')),
          ],
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 8),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => brandCard(
              borderColor: Border.all(
                color: const Color.fromARGB(138, 39, 39, 39),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
