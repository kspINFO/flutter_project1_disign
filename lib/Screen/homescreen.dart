import 'package:day1_project/Screen/product.dart';
import 'package:day1_project/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'detailscreen.dart';
import 'produc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar(),
              bodyparts(size, context),
            ],
          ),
          const Positioned(
            top: 160,
            left: 27,
            child: Text(
              "Plants",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
              top: 45,
              right: 10,
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 40,
              ))
        ],
      ),
    );
  }

  Container bodyparts(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen1(),
                  ),
                );
              },
              child: const Hero(
                tag: " flower1",
                child: ProductDetails(
                    name: "Flowers vase",
                    price: '45',
                    image: "images/flowers vase.jpeg"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeatilScreen2(),
                  ),
                );
              },
              child: const Hero(
                tag: " flower2",
                child: ProductDetails(
                    name: "Zinnia Flowers",
                    price: '65',
                    image: "images/Zinnia Flowers.jpeg"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded sideBar() {
    return Expanded(
        child: Container(
      color: secondaryColor,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 7,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
              ),
              child: Icon(
                Icons.looks_outlined,
                size: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Green",
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 210,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 14,
            ),
            child: RotatedBox(
              quarterTurns: 3,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: "Shape Class",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                "Indore Plants",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                "Green Plants",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: primaryColor,
              ),
              width: 60,
              height: 70,
              child: const Icon(
                Icons.home,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
