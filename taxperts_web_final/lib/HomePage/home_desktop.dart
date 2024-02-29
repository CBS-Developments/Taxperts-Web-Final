import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/logo.png'), // Replace with your assets path to logo
            CustomNavigationBar(
              selectedIndex: _selectedIndex,
              onItemSelected: _navigateTo,
            ),
          ],
        ),
      ),
      body: Text('Desktop'),
    );
  }
}
