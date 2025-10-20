import 'package:e_commerce/features/shop/screens/shop/Widget/UCustomRoundedEdges.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/appbar.dart';
import 'package:e_commerce/features/shop/screens/shop/Widget/uPrimaryHeaderContainer.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: UCustomRoundedEdges(),

        child: UPrimaryHeaderContainer(child: UCustomAppBar()),
      ),
    );
  }
}
