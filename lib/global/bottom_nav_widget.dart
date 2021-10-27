import 'package:flutter/material.dart';
import 'package:simple_bottom_nav/src/page_controller.dart';

Widget bottomNavWidget({
  bool isSelected = false,
  int index = 0,
  Color? activeColor,
  List? iconList,
  PageViewController? controller,
  String title = "Recipe",
  required BuildContext context,
}) {
  return InkWell(
    onTap: () {
      controller!.setPageIndex(index);
      controller.pageController.jumpToPage(
        index,
      );
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: controller!.currentPageIndex == index
                ? activeColor
                : Colors.transparent,
            shape: BoxShape.circle,
          ),
          height: 40,
          width: 40,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: controller.currentPageIndex == index
                  ? AssetImage(iconList![0])
                  : AssetImage(iconList![1]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: controller.currentPageIndex == index
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ],
    ),
  );
}
