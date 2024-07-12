import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  const ProductDetails({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 300,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 55,
            right: 20,
          ),
          child: Text(
            "More details bout product, that customor wants to know",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 54,
            right: 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$price',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Image.asset(
                "images/Basket Vector Icon.jpeg",
                height: 60,
                width: 60,
              )
            ],
          ),
        )
      ],
    );
  }
}
