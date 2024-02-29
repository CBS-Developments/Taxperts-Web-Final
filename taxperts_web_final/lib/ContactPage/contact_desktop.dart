import 'package:flutter/material.dart';

import '../Components/navBar.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({super.key});

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  int _selectedIndex = 5;

  void _navigateTo(int index, String routeName) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white, // Background color
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Shadow color with some transparency
                  spreadRadius: 0, // Spread radius
                  blurRadius: 4, // Blur radius
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              // If you also want to round the corners of the container
            ),
            height: 100, // Set the container height to match the AppBar height
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Center the Row vertically
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space items horizontally
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
          Text('Contact Desktop'),
        ],
      ),
    );
  }
}
