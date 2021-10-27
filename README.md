# Simple Form Builder
[![pub package](https://img.shields.io/pub/v/simple_form_builder.svg)](https://pub.dev/packages/simple_form_builder)
[![GitHub Stars](https://img.shields.io/github/stars/tanmoy27112000/SimpleFormBuilder.svg?logo=github)](https://pub.dev/packages/simple_form_builder)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20IOS%20%7C%20Web-green)](https://img.shields.io/badge/Platform-Android%20%7C%20IOS%20%7C%20Web-green)

A simple, colorful and fluid bottom navigation built with flutter

Maintainer : [Tanmoy Karmakar](https://tanmoykarmakar.in)<br>


### Specs
<!-- [![pub](https://img.shields.io/pub/v/flash.svg?style=flat)](https://pub.dev/packages/flash) -->


This library allows you easily implement bottom navigation with many customizable fields to make it your own
<!-- multiple types of fields `text` , `checkbox`, `multiselect` , `datetime` , `date` , `time` , and `file upload`.
This package also provides additional remark options. -->

It has been written **100% in Dart**. ❤️

<p>
  <img width="205px" alt="Example" src="https://i.imgur.com/3uxKgfr.mp4"/>
</p>


<br>

## Installing
Add the following to your `pubspec.yaml` file:
```yaml
dependencies:
  simple_bottom_nav: ^0.0.2
```

<br>

## Sample code

```
import 'package:flutter/material.dart';
import 'package:simple_bottom_nav/simple_bottom_nav.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SimpleBottomNavigator(
          navWidgetList: [
            BottomNavModel(
              title: "Home",
              index: 0,
              activeColor: const Color(0xffFB65B2),
              iconList: [
                "assets/Component 3.png",
                "assets/Home.png",
              ],
              context: context,
            ),
            BottomNavModel(
              title: "Recipe",
              index: 1,
              activeColor: const Color(0xff2EB2FF),
              iconList: [
                "assets/foodtrayFilled.png",
                "assets/foodtray.png",
              ],
              context: context,
            ),
          ],
          pageList: const [
            Scaffold(
              body: Center(
                child: Text("Home"),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text("Recipe"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

<br>

## Simple Usage

To integrate the simple bottom navigation bar just implement it with the following code


## Custom Usage
There are several options that allow for more control:

|  Properties  |   Description   |
|--------------|-----------------|
| `navWidgetList` | This takes a list of BottomNavModel object and converts them to bottom navigation widget |
| `pageList` | This takes in a list of widget preferably Scaffold to show corresponding screens |
<br>