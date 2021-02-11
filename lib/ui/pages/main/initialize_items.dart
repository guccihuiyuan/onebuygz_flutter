import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_buy_guizhou/ui/pages/home/home.dart';
import 'package:one_buy_guizhou/ui/pages/mine/mine.dart';

final List<Widget> pages = [
  HYHomeScreen(),
  HYMineScreen()
];

final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
      label: "首页",
      icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
      label: "我的",
      icon: Icon(Icons.person)
  )
];