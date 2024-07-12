import 'package:day1_project/Screen/product.dart';
import 'package:flutter/material.dart';

import 'detailscreen.dart';

class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower1",
      child: ProductDetail(
          name: "House Shape\nClose Plant",
          price: "\$45",
          image: "images/flowers vase.jpeg"),
    );
  }
}

class DeatilScreen2 extends StatelessWidget {
  const DeatilScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "flower2",
      child: ProductDetail(
          name: "Glass Water",
          price: "\$60",
          image: "images/Zinnia Flowers.jpeg"),
    );
  }
}
