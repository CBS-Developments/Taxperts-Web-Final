import 'package:flutter/material.dart';
import 'package:taxperts_web_final/BlogPage/blog_desktop.dart';
import 'package:taxperts_web_final/BlogPage/blog_mobile.dart';
import 'package:taxperts_web_final/BlogPage/blog_tab.dart';
import 'package:taxperts_web_final/responsive.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: BlogMobile(), tablet: BlogTablet(), desktop: BlogDesktop());
  }
}
