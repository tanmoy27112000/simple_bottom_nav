import 'package:flutter/material.dart';

class PageViewController extends ChangeNotifier {
  PageController pageController = PageController(
    initialPage: 0,
  );
  int currentPageIndex = 0;

  void setPageIndex(int value) {
    currentPageIndex = value;
    notifyListeners();
  }
}
