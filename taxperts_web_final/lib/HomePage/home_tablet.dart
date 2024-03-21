import 'package:flutter/material.dart';
import 'package:taxperts_web_final/Components/navBar.dart';
import 'package:taxperts_web_final/colors.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
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

                NavigationBarTablet(),
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

          )
        ],
      ),
    );
  }
}
