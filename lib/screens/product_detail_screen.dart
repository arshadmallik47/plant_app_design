// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app_design/utils/colors.dart';

class ProductDetailScreen extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  const ProductDetailScreen(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            bottomParts(context),
            // Hero(tag: 'flower1', child: Image.asset("images/flower1.png")),
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.85,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top,
                        left: 16,
                        right: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                          ),
                          Image.asset(
                            'images/filter icon.png',
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 32),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          height: 1.01,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32,
                      ),
                      child: Stack(
                        children: [
                          // for image
                          Image.asset(
                            image,
                            width: MediaQuery.of(context).size.width,
                          ),
                          // for scroll dot
                          Padding(
                            padding: EdgeInsets.only(
                              top: 250,
                            ),
                            child: Container(
                              height: 22,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 275,
                            ),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 290,
                            ),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 305,
                            ),
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
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
            // for price
            Positioned(
              top: 250,
              left: 32,
              child: Text(
                price,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Positioned(
              top: 110,
              right: 40,
              child: Icon(
                Icons.favorite_border,
                color: primaryColor,
                size: 32,
              ),
            ),

            // For add to card
            Positioned(
              top: 430,
              right: 0,
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                  color: primaryColor,
                ),
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
    );
  }

  Positioned bottomParts(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.only(top: 790, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // For Height
              Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '40cm - 50cm',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              // Fot Pot
              Column(
                children: [
                  Text(
                    'Pot',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'self watering pot',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              // For temperature
              Column(
                children: [
                  Text(
                    'Temperature',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '18C - 25C',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
