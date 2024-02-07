import 'package:flutter/material.dart';
import 'package:portfolio/resource/responsive.dart';
import 'package:portfolio/view/experience/experience_mobile.dart';
import 'package:portfolio/view/experience/experience_tab.dart';

import 'experience_web.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      webView: ExperienceWeb(),
      mobileView: ExperienceMob(),
      tabView: ExperienceTab(),
    );
  }
}
