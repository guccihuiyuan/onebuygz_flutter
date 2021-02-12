import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_buy_guizhou/ui/pages/web_light_app/web_light_app.dart';

class HYHomeScreen extends StatefulWidget {
  @override
  _HYHomeScreenState createState() => _HYHomeScreenState();
}

class _HYHomeScreenState extends State<HYHomeScreen> {
  // 白色状态栏
  static const SystemUiOverlayStyle light = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    systemNavigationBarDividerColor: null,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
  );

  // 黑色状态栏
  static const SystemUiOverlayStyle dark = SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    systemNavigationBarDividerColor: null,
    statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  );

  final _scrollController = ScrollController();

  // 状态栏是否是白色
  var isLight = true;

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(light);

    _scrollController.addListener(() {
      if (_scrollController.offset <= 0) {
        SystemChrome.setSystemUIOverlayStyle(light);
        setState(() {
          isLight = true;
        });
      } else {
        SystemChrome.setSystemUIOverlayStyle(dark);
        setState(() {
          isLight = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(
          children: [
            HYStatusBar(isLight),
            HYNavBar(isLight),
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        HYHomeSearch(),
                        SizedBox(height: 12),
                        HYHot(),
                        SizedBox(height: 12),
                        HYGrid(),
                        SizedBox(height: 12),
                        HYCommodities(),
                        SizedBox(height: 12),
                      ],
                    )
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

class HYStatusBar extends StatelessWidget {
  var isLight;
  HYStatusBar(this.isLight);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      color: this.isLight ? Colors.transparent : Colors.white,
      height: statusBarHeight,
    );
  }
}

class HYNavBar extends StatelessWidget {
  var isLight;
  HYNavBar(this.isLight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.isLight ? Colors.transparent : Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        height: 44,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(Icons.location_on, color: this.isLight ? Colors.white : Colors.black, size: 16),
                  SizedBox(width: 6),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("贵阳市", style: TextStyle(color: this.isLight ? Colors.white : Colors.black)),
                          Icon(Icons.keyboard_arrow_down, color: this.isLight ? Colors.white : Colors.black, size: 16),
                        ],
                      ),
                      Text("6℃~116℃", style: TextStyle(color: this.isLight ? Colors.white : Colors.black, fontSize: 12))
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                child: Text("一码贵州", style: TextStyle(color: this.isLight ? Colors.white : Colors.black, fontSize: 24)),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        )
    );
  }
}

class HYHomeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: 35,
      ),
      child: TextField(
        // 设置字体
        style: TextStyle(
          fontSize: 14,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: 0,
            bottom: 0,
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: '贵州美食',
          enabledBorder: OutlineInputBorder( //未选中时候的颜色
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              // 里面的数值尽可能大才是左右半圆形，否则就是普通的圆角形
              Radius.circular(50),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              // 里面的数值尽可能大才是左右半圆形，否则就是普通的圆角形
              Radius.circular(50),
            ),
          ),
          prefixIcon: Icon(Icons.search),
        ),
      )
    );
  }
}

class HYHot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Text("热搜：", style: TextStyle(color: Colors.white)),
        Text("清镇年货节", style: TextStyle(color: Colors.white)),
        Text(" | 礼盒", style: TextStyle(color: Colors.white)),
        Text(" | 温泉", style: TextStyle(color: Colors.white)),
        Text(" | 贵阳年货节", style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class HYGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white
      ),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        padding: EdgeInsets.zero,
        childAspectRatio: 1,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.yellow, size: 48,),
              Text("商城订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.blue, size: 48,),
              Text("采集订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.orange, size: 48),
              Text("团购订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 48),
              Text("影票订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 48),
              Text("影票订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 48),
              Text("影票订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 48),
              Text("影票订单")
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 48),
              Text("影票订单")
            ],
          )
        ],
      ),
    );
  }
}

final imageUrl = 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1615596948&t=cff6cda563c14201ef61b5cc8b9cedd1.jpg';

class HYCommodities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.8,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          HYCommodityItem(),
          // GestureDetector(
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(20),
          //     child: Container(
          //       color: Colors.white,
          //       child: Image.network(imageUrl, fit: BoxFit.fill),
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.of(context).pushNamed(HYWebLightApp.routeName);
          //   },
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(20),
          //   child: Container(
          //     color: Colors.white,
          //     child: Image.network(imageUrl, fit: BoxFit.fill),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class HYCommodityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          child: Image.network(imageUrl, fit: BoxFit.fill),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(HYWebLightApp.routeName);
      },
    );
  }
}
