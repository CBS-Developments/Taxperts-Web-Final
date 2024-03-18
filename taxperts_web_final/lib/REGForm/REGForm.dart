import 'package:flutter/material.dart';
import 'package:taxperts_web_final/REGForm/REGForm_desktop.dart';
import 'package:taxperts_web_final/REGForm/REGForm_mobile.dart';
import 'package:taxperts_web_final/REGForm/REGForm_tablet.dart';
import 'package:taxperts_web_final/responsive.dart';

class REGForm extends StatefulWidget {
  const REGForm({super.key});

  @override
  State<REGForm> createState() => _REGFormState();
}

class _REGFormState extends State<REGForm> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: REGFormMobile(),
        tablet: REGFormTablet(),
        desktop: REGFormDesktop());
  }
}
