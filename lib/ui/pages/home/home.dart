import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HYStatusBar(),
                HYNavBar(),
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
          )
      )
    );
  }
}

class HYStatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: statusBarHeight,
    );
  }
}

class HYNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      child: Row(
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.white, size: 16),
              SizedBox(width: 6),
              Column(
                children: [
                  Row(
                    children: [
                      Text("贵阳市", style: TextStyle(color: Colors.white)),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 16),
                    ],
                  ),
                  Text("6℃~116℃", style: TextStyle(color: Colors.white, fontSize: 12))
                ],
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Align(
              child: Text("一码贵州", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
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
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: Colors.white,
              child: Image.network(imageUrl, fit: BoxFit.fill),
            ),
          ),



          // Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //         color: Colors.white
          //     ),
          //     child: Image.network(imageUrl),
          // )
        ],
      ),
    );
  }
}