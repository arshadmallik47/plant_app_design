import 'package:flutter/material.dart';
import 'package:plant_app_design/screens/product_detail_screen.dart';

class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
        tag: 'flower1',
        child: ProductDetailScreen(
            name: 'House Shape\nClosePlant',
            price: '\$45',
            image: 'images/flower1.png'));
  }
}

class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: 'flower2',
      child: ProductDetailScreen(
          name: 'Glass Water', price: '\$60', image: 'images/flower2.png'),
    );
  }
}
