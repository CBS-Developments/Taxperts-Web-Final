import 'dart:ui';

import 'package:flutter/material.dart';

import 'ContactPage/contact.dart';
import 'FormPage/form.dart';
import 'HomePage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          fontFamily: 'Poppins',
          // Define other theme properties if needed
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => HomePage(),
          '/contact': (context) => ContactPage(),
          // '/home': (context) => HomePage(),
          // '/blog': (context) => BlogPage(),
          '/start': (context) => FormPage(),
          // '/services': (context) => ServicePage(),
          // '/tax-calculator': (context) => CalculatorPage(),
          // '/Beneficiaries': (context) => BeneficiariesPage(),
          // '/createBeneficiaries': (context) => CreateBeneficiariesPage(),
          // '/Chat': (context) => ChatScreen(),
          // '/Users': (context) => UsersScreen(),
          // '/Meet': (context) => MeetScreen(),
          // '/Apps': (context) => AppsScreen(),
        },
        home: HomePage()
    );
  }
}



class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods
  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) {
    // Use your custom scrollbar here or return the child directly to use the default scrollbar
    return child;
  }

  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }

  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad
    // Add other device kinds as needed
  };
}