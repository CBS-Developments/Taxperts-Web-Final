import 'package:flutter/material.dart';

import '../Components/navBar.dart';
import '../colors.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}
