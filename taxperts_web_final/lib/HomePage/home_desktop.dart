import 'package:flutter/material.dart';
import 'package:taxperts_web_final/sizes.dart';

import '../Components/navBar.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  int _selectedIndex = 0;

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
        ],
      ),
    );
  }
}
