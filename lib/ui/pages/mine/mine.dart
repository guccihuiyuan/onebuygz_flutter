import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HYMineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(12, 24, 12, 24),
            height: 120,
            color: Colors.white,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg&refer=http%3A%2F%2Fa0.att.hudong.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1615596948&t=cff6cda563c14201ef61b5cc8b9cedd1.jpg",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 1,
                    child: Text("登录/注册", style:
                    TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 12),
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
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white
            ),
            margin: EdgeInsets.all(12),
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
                    Icon(Icons.favorite, color: Colors.yellow),
                    Text("商城订单")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.blue),
                    Text("采集订单")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.orange),
                    Text("团购订单")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.green),
                    Text("影票订单")
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}