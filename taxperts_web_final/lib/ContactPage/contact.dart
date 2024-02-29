import 'package:flutter/material.dart';


import '../responsive.dart';
import 'contact_desktop.dart';
import 'contact_mobile.dart';
import 'contact_tablet.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobile(),
      tablet: ContactTablet(),
      desktop: ContactDesktop(),
    );
  }
}

