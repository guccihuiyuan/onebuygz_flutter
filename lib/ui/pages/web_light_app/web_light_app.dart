import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HYWebLightApp extends StatefulWidget {
  static const String routeName = '/web-light-app';

  @override
  HYWebLightAppState createState() => HYWebLightAppState();
}

class HYWebLightAppState extends State<HYWebLightApp> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('那家网'),
        backgroundColor: Colors.white,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.vgogbuy.com',
      )
    );
  }
}
