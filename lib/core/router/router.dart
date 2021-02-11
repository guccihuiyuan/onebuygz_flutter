import 'package:flutter/material.dart';
import 'package:one_buy_guizhou/ui/pages/main/main.dart';
import 'package:one_buy_guizhou/ui/pages/web_light_app/web_light_app.dart';

class HYRouter {
  static final String initialRoute = HYMainScreen.routeName;

  static final Map<String, WidgetBuilder> routers = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYWebLightApp.routeName: (ctx) => HYWebLightApp()
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}