import 'package:flutter/material.dart';
import 'package:portfolio/resource/responsive.dart';
import 'package:portfolio/view/intro/intro_mobile.dart';
import 'package:portfolio/view/intro/intro_web.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'intro_tab.dart';

class IntroContent extends StatefulWidget {
  final AutoScrollController aScrollController;

  const IntroContent(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroContent> createState() => _IntroContentState();
}

class _IntroContentState extends State<IntroContent> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      tabView: IntroTab(widget.aScrollController),
      mobileView: IntroMobile(widget.aScrollController),
      webView: IntroWeb(widget.aScrollController),
    );
  }
}
