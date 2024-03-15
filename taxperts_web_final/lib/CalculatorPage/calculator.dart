import 'package:flutter/material.dart';
import 'package:taxperts_web_final/CalculatorPage/calculator_desktop.dart';
import 'package:taxperts_web_final/CalculatorPage/calculator_mobile.dart';
import 'package:taxperts_web_final/CalculatorPage/calculator_tablet.dart';
import 'package:taxperts_web_final/responsive.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: CalculatorMobile(),
        tablet: CalculatorTablet(),
        desktop: CalculatorDesktop());
  }
}
