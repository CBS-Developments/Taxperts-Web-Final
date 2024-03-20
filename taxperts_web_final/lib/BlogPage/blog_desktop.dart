import 'package:flutter/material.dart';

import '../Components/navBar.dart';
import '../colors.dart';

class BlogDesktop extends StatefulWidget {
  const BlogDesktop({Key? key}) : super(key: key);

  @override
  State<BlogDesktop> createState() => _BlogDesktopState();
}

class _BlogDesktopState extends State<BlogDesktop> {
  int _selectedIndex = 4;

  void _navigateTo(int index, String routeName) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, routeName);
  }


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
              // padding: EdgeInsets.symmetric(vertical: 20),
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
              height:
              100, // Set the container height to match the AppBar height
              child: Row(
                crossAxisAlignment:
                CrossAxisAlignment.center, // Center the Row vertically
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Space items horizontally
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Image.asset('images/logo.png', height: 50),
                  ), // Adjust the size of the logo if necessary
                  CustomNavigationBar(
                    selectedIndex: _selectedIndex,
                    onItemSelected: _navigateTo,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: p30),
              height: 650,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/blog650.png', // Replace with your background image
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
                          'BLOG POST',
                          style: TextStyle(
                            fontSize: 60,
                            color: AppColor.appTeal,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.0),
                          child: Text(
                            '''Taxperts guide you through the ever-evolving landscape of taxation, effortlessly.   \nDon't miss out on valuable insights that could make a difference in your  \ntax planning and compliance. Visit our blog and subscribe today. ''',
                            style: TextStyle(
                              fontSize: 18,
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
