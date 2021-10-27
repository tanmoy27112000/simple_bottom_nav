import 'package:flutter/material.dart';

class BottomNavModel {
  bool isSelected = false;
  final int index;
  final Color? activeColor;
  final List? iconList;
  final String title;
  final BuildContext context;

  BottomNavModel({
    required this.activeColor,
    required this.context,
    required this.iconList,
    required this.index,
    required this.title,
    this.isSelected = false,
  });
}
