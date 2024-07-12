import 'package:day1_project/Utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const ProductDetail({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            bottomparts(context),
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(200)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        right: 16,
                        left: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // for back button
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                          ),

                          // For filter icon
                          Image.asset(
                            "images/Filter icon1.jpg",
                            width: 50,
                            height: 50,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    // For name

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 32,
                        right: 23,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              height: 1.01,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: primaryColor,
                            size: 35,
                          )
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 46,
                      ),
                      child: Stack(
                        children: [
                          // For a image
                          Image.asset(
                            image,
                            width: MediaQuery.of(context).size.width,
                            height: 540,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              top: 295,
                            ),
                            child: Container(
                              height: 22,
                              width: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: primaryColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 320,
                            ),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[200]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 330,
                            ),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[200]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 340,
                            ),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[200]),
                            ),
                          ),
                          Positioned(
                            top: 250,
                            left: 0,
                            child: Text(
                              price,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 280,
                            right: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                ),
                                color: primaryColor,
                              ),
                              height: 70,
                              width: 70,
                              child: Icon(
                                Icons.add_circle,
                                color: secondaryColor,
                                size: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned bottomparts(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: primaryColor,
          child: const Padding(
            padding: EdgeInsets.only(top: 850, left: 2),
            child: Row(
              // For Height
              children: [
                // For Height

                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    // For Height

                    Text(
                      "Height",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "40cm - 50cm",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                    //For pot
                  ],
                ),

                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    // For Height

                    Text(
                      "pot",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Self watering pot",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                    //For pot
                  ],
                ),
                // Temperatre

                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    // For Height

                    Text(
                      "Temperatre",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "18c -25c",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                    //For pot
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
