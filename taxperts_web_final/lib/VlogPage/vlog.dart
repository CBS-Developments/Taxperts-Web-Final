import 'package:flutter/material.dart';
import 'package:taxperts_web_final/VlogPage/vlog_desktop.dart';
import 'package:taxperts_web_final/VlogPage/vlog_mobile.dart';
import 'package:taxperts_web_final/VlogPage/vlog_tablet.dart';
import 'package:taxperts_web_final/responsive.dart';

class VlogPage extends StatefulWidget {
  const VlogPage({Key? key}) : super(key: key);

  @override
  State<VlogPage> createState() => _VlogPageState();
}

class _VlogPageState extends State<VlogPage> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: VlogMobile(), tablet: VlogTablet(), desktop: VlogDesktop());
  }
}
