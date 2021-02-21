import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HYMineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // 个人信息
          _PersonalInfoModule(),
          // 订单模块
          _OrderModule()
        ],
      )
    );
  }
}

// 个人信息
class _PersonalInfoModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // 间距
        padding: EdgeInsets.fromLTRB(12, 24, 12, 24),
        // 高度
        height: 140,
        // 背景颜色
        color: Colors.white,
        child: IntrinsicHeight(
          child: Row(
            children: [
              // 头像
              ClipOval(
                child: Image.network(
                  "https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg",
                  width: 80,
                  // fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              // 名称
              Expanded(
                flex: 1,
                child: Text("登录/注册", style:
                TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(width: 12),
              // 设置按钮
              Container(
                height: double.maxFinite,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.settings),
                ),
              )
            ],
          ),
        )
    );
  }
}

// 订单模块
class _OrderModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 圆角
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white
      ),
      // 外间距
      margin: EdgeInsets.all(12),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        padding: EdgeInsets.zero,
        childAspectRatio: 1,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _OrderItem(title: "商城订单", icon: Icons.favorite, color: Colors.yellow),
          _OrderItem(title: "采集订单", icon: Icons.favorite, color: Colors.blue),
          _OrderItem(title: "团购订单", icon: Icons.favorite, color: Colors.orange),
          _OrderItem(title: "影票订单", icon: Icons.favorite, color: Colors.green)
        ],
      ),
    );
  }
}

class _OrderItem extends StatelessWidget {
  final title;
  final icon;
  final color;

  _OrderItem({this.title, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icon, color: this.color),
        Text(this.title)
      ],
    );
  }
}