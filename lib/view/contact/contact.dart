import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/resource/responsive.dart';
import 'package:portfolio/view/contact/contact_mobile.dart';
import 'package:portfolio/view/contact/contact_tab.dart';
import 'package:portfolio/view/contact/contact_web.dart';

class Contact extends ConsumerStatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  ConsumerState<Contact> createState() => _ContactState();
}


class _ContactState extends ConsumerState<Contact> {

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      webView: ContactWeb(),
      tabView: ContactTab(),
      mobileView: ContactMobile(),
    );
  }
}


