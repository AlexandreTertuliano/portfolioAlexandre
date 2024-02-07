import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/controller/general_controller.dart';
import 'package:portfolio/resource/app_class.dart';
import 'package:portfolio/view/about/about.dart';
import 'package:portfolio/view/experience/experience.dart';
import 'package:portfolio/view/intro/intro.dart';
import 'package:portfolio/view/widget/app_bar.dart';
import 'package:portfolio/view/widget/left_pane.dart';
import 'package:portfolio/view/widget/right_pane.dart';
import 'package:portfolio/view/work/work.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'contact/contact.dart';

class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final mScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              ref.read(scrollControlProvider.notifier).state = false;
            } else if (direction == ScrollDirection.forward) {
              ref.read(scrollControlProvider.notifier).state = true;
            }
            return true;
          },
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Color(0xff112240),
                  Color(0xff0a192f),
                  Color(0xff020c1b)
                ])),
            height: AppClass().getMqHeight(context),
            child: Column(
              children: [
                Consumer(builder: (context, ref, child) {
                  var isScrollingUp = ref.watch(scrollControlProvider);
                  return AnimatedOpacity(
                    opacity: isScrollingUp ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 500),
                    child: ActionBar(mScrollController),
                  );
                }),
                Expanded(
                  child: () {
                    ScreenType scrType = AppClass().getScreenType(context);
                    return Row(
                      children: [
                        scrType == ScreenType.mobile ? const SizedBox() : const LeftPane(),
                        Expanded(
                            flex: 8,
                            child: ListView(
                              controller: mScrollController,
                              children: [
                                AutoScrollTag(
                                    key: const ValueKey(0),
                                    controller: mScrollController,
                                    index: 0,
                                    child: IntroContent(mScrollController)),
                                AutoScrollTag(
                                    key: const ValueKey(1),
                                    controller: mScrollController,
                                    index: 1,
                                    child: const About()),
                                AutoScrollTag(
                                    key: const ValueKey(2),
                                    controller: mScrollController,
                                    index: 2,
                                    child: const Experience()),
                                AutoScrollTag(
                                    key: const ValueKey(3),
                                    controller: mScrollController,
                                    index: 3,
                                    child: const Work()),
                                AutoScrollTag(
                                    key: const ValueKey(4),
                                    controller: mScrollController,
                                    index: 4,
                                    child: const Contact())
                              ],
                            )),
                        scrType == ScreenType.mobile ? const SizedBox() : const RightPane(),
                      ],
                    );
                  }(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
