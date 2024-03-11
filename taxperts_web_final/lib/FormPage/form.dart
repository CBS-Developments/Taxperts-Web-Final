import 'package:flutter/material.dart';
import 'package:taxperts_web_final/FormPage/form_desktop.dart';
import 'package:taxperts_web_final/FormPage/form_mobile.dart';
import 'package:taxperts_web_final/FormPage/form_tablet.dart';
import 'package:taxperts_web_final/responsive.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: FormMobile(),
        tablet: FormTablet(),
        desktop: FormDesktop());
  }
}
