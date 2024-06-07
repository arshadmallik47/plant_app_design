// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app_design/utils/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
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
                            onTap: () {},
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
                        'House Shape \nClose Plant',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          height: 1.01,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32,
                      ),
                      child: Stack(
                        children: [
                          // for image
                          Image.asset(
                            "images/flower1.png",
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
              top: 240,
              left: 32,
              child: Text(
                "\$45",
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
          ],
        ),
      ),
    );
  }
}
