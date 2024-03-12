import 'package:flutter/material.dart';
import 'package:taxperts_web_final/ServicePage/service_desktop.dart';
import 'package:taxperts_web_final/ServicePage/service_mobile.dart';
import 'package:taxperts_web_final/ServicePage/service_tablet.dart';
import 'package:taxperts_web_final/responsive.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: ServiceMobile(),
        tablet: ServiceTablet(),
        desktop: ServiceDesktop());
  }
}
