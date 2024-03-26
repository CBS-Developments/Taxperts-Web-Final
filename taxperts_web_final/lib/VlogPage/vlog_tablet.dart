import 'package:flutter/material.dart';

import '../Components/navBar.dart';
import '../colors.dart';

class VlogTablet extends StatefulWidget {
  const VlogTablet({Key? key}) : super(key: key);

  @override
  State<VlogTablet> createState() => _VlogTabletState();
}

class _VlogTabletState extends State<VlogTablet> {
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
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Image.asset('images/logo.png', height: 50),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/start');
                        // Action when button is pressed
                      },
                      child: Text(
                        'Start Now',
                        style: TextStyle(
                          fontSize: 15,
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
              height: 550,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/vlog500.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Centered Column for text and button overlay
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'VLOG',
                          style: TextStyle(
                            fontSize: 45,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            '''We believe in doing your taxes right. We’re committed to   \nserving you assuring your comfort in tax compliance decision. ''',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors
                                  .black, // Make sure AppColor class is defined or imported
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
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
