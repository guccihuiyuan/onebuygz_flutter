import 'package:flutter/material.dart';
import 'package:one_buy_guizhou/core/router/router.dart';
import 'package:one_buy_guizhou/ui/shared/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '一码贵州',
      // 主题
      theme: HYAppTheme.norTheme,

      // 路由
      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routers,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}
