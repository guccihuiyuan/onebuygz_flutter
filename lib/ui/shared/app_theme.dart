import 'package:flutter/material.dart';

class HYAppTheme {
  // 1.共有属性
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;

  // 2.普通模式
  static final Color norTextColors = Colors.red;

  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.orange,
      canvasColor: Color.fromRGBO(248,248,255, 1),
      textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: normalFontSize),
          headline1: TextStyle(fontSize: smallFontSize),
          headline2: TextStyle(fontSize: normalFontSize),
          headline3: TextStyle(fontSize: largeFontSize)
      )
  );
}