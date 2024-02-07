import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resource/responsive.dart';
import 'package:portfolio/view/about/about_web.dart';
import 'package:portfolio/view/about/about_mobile.dart';
import 'package:portfolio/view/about/about_tab.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      webView: AboutWeb(),
      tabView: AboutTab(),
      mobileView: AboutMobile(),
    );
  }
}
