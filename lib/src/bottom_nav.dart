import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_bottom_nav/global/bottom_nav_model.dart';
import 'package:simple_bottom_nav/simple_bottom_nav.dart';
import 'package:simple_bottom_nav/src/page_controller.dart';

class SimpleBottomNavigator extends StatefulWidget {
  final List<Widget> pageList;
  final List<BottomNavModel>? navWidgetList;

  const SimpleBottomNavigator({
    Key? key,
    required this.pageList,
    required this.navWidgetList,
  }) : super(key: key);

  @override
  _SimpleBottomNavigatorState createState() => _SimpleBottomNavigatorState();
}

class _SimpleBottomNavigatorState extends State<SimpleBottomNavigator> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageViewController(),
      builder: (context, child) => Consumer<PageViewController>(
        builder: (context, controller, child) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: PageView(
              onPageChanged: (value) {
                controller.setPageIndex(value);
              },
              controller: controller.pageController,
              children: widget.pageList,
            ),
            bottomNavigationBar: Container(
              height: Platform.isIOS ? 100 : 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: widget.navWidgetList!
                    .map((e) => bottomNavWidget(
                          context: e.context,
                          activeColor: e.activeColor,
                          controller: controller,
                          iconList: e.iconList,
                          index: e.index,
                          isSelected: e.isSelected,
                          title: e.title,
                        ))
                    .toList(),
                // [
                //   bottomNavWidget(
                //     title: "Home",
                //     index: 0,
                //     activeColor: const Color(0xffFB65B2),
                //     controller: controller,
                //     iconList: [
                //       "Component 3",
                //       "Home",
                //     ],
                //     context: context,
                //   ),
                //   bottomNavWidget(
                //     title: "Recipe",
                //     index: 1,
                //     activeColor: const Color(0xff2EB2FF),
                //     controller: controller,
                //     iconList: [
                //       "foodtrayFilled",
                //       "foodtray",
                //     ],
                //     context: context,
                //   ),
                //   bottomNavWidget(
                //     title: "Pregency",
                //     index: 2,
                //     activeColor: const Color(0xff35B729),
                //     controller: controller,
                //     iconList: [
                //       "Group 526",
                //       "Frame 9",
                //     ],
                //     context: context,
                //   ),
                //   bottomNavWidget(
                //     title: "Notification",
                //     index: 3,
                //     activeColor: const Color(0xffB760E6),
                //     controller: controller,
                //     iconList: [
                //       "Component 3-2",
                //       "Component 4",
                //     ],
                //     context: context,
                //   ),
                //   bottomNavWidget(
                //     title: "Profile",
                //     index: 4,
                //     activeColor: const Color(0xff707070),
                //     controller: controller,
                //     iconList: [
                //       "Component 3-3",
                //       "Component 6",
                //     ],
                //     context: context,
                //   ),
                // ],
              ),
            ),
          );
        },
      ),
    );
  }
}
