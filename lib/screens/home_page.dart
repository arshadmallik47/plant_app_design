import 'package:flutter/material.dart';
import 'package:plant_app_design/screens/product_detail_screen.dart';
import 'package:plant_app_design/screens/product_page.dart';
import 'package:plant_app_design/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              SideBar(),
              bodyParts(size, context),
            ],
          ),
          const Positioned(
            top: 135,
            left: 25,
            child: Text(
              'Plants',
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
            ),
          )
        ],
      ),
    );
  }

  Container bodyParts(Size size, BuildContext context) {
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
                    builder: (context) => const DetailScreen(),
                  ),
                );
              },
              child: const Hero(
                tag: "flower1",
                child: ProductPage(
                  name: "House Shape Close",
                  price: "45",
                  image: 'images/flower1.png',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ),
                );
              },
              child: const Hero(
                tag: "flower2",
                child: ProductPage(
                  name: "Glass Water",
                  price: "60",
                  image: 'images/flower2.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded SideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 38),
              child: Image.asset(
                'images/more icon.png',
                width: 60,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Green',
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 210,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: ".",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                    TextSpan(
                      text: "Shape Class",
                      style: TextStyle(color: primaryColor),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
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
                  "Indore Plants",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 110),
              child: Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: primaryColor,
                ),
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
