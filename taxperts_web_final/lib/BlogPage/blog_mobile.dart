import 'package:flutter/material.dart';

import '../Components/navBar.dart';
import '../colors.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({Key? key}) : super(key: key);

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;
    double p15 = screenWidth / 120;
    double p120 = screenWidth / 15;
    double p250 = screenWidth / 6;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.1), // Shadow color with some transparency
                    spreadRadius: 0, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
                // If you also want to round the corners of the container
              ),
              height: 80,
              child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.center, // Center the Row vertically
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Space items horizontally
                children: <Widget>[

                  const NavigationBarTablet(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset('images/logo.png', height: 25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/start');
                        // Action when button is pressed
                      },
                      child: Text(
                        'Start Now',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColor.appOrange, // Set text color to maintain visibility
                        ),
                      ),
                      style: TextButton.styleFrom(
                        // Optional: Add any additional styling here
                      ),
                    ),
                  ),


                ],
              ),

            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: p30),
              height: 300,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/blog500.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  //
                  //Centered Column for text and button overlay

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BLOG POST',
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            '''Taxperts guide you through the ever-evolving landscape \nof taxation, effortlessly. Don't miss out on valuable insights   \nthat could make a difference in your tax planning and\ncompliance. Visit our blog and subscribe today. ''',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors
                                  .black, // Make sure AppColor class is defined or imported
                            ),
                          ),
                        ),
                        SizedBox(height: 60),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
