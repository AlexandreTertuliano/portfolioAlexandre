import 'package:flutter/cupertino.dart';
import 'package:portfolio/resource/app_class.dart';

class Responsive extends StatelessWidget {
  final Widget mobileView, webView, tabView;

  const Responsive(
      {Key? key,
      required this.mobileView,
      required this.tabView,
      required this.webView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenType scrType = AppClass().getScreenType(context);
    switch (scrType) {
      case ScreenType.mobile:
        return mobileView;
      case ScreenType.tab:
        return tabView;
      case ScreenType.web:
        return webView;
    }
  }
}
