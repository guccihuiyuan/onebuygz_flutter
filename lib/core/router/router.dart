import 'package:flutter/material.dart';
import 'package:one_buy_guizhou/ui/pages/main/main.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routers = {
    HYMainScreen.routeName: (ctx) => HYMainScreen()
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}