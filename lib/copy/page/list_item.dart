import 'package:flutter/material.dart';

/*
  比较烦人的是flutter中没有相应变量设置为match_parent
  更烦人的是同一个widget在不同控件下默认值不同，如下Container在最外层默认宽度最宽
  放到column里面后宽度变为子Image的宽度
  至于height，呵呵了，看不懂
 */

class ListItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Item();
  }
}

class Item extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            //container的宽高是由其child的宽高控制的
            color: Colors.blue,
//            decoration: new BoxDecoration(
//              border: new Border.all(width: 2.0, color: Colors.red),
//              color: Colors.grey,
//              borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
//              image: new DecorationImage(
//                image: new NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
//                centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//              ),
//            ),
            width: double.infinity,
//            height: double.nan,
//            height: 122,
            padding: const EdgeInsets.all(8.0),
//            alignment: Alignment.center,
//            constraints: BoxConstraints.tightFor(),
            child: Image(
              image: AssetImage('assets/holiday_hs_base_top_icon.png'),
              //如何把image充满父控件,使用fit
              fit: BoxFit.fill,
            ),
          ),
          Text("昨天遇见了我家那小子之后就相当可以了"),
          AspectRatio(
            aspectRatio: 4.0 / 1.0,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/holiday_hs_base_top_icon.png'),
                  //如何把image充满父控件,使用fit
                  fit: BoxFit.fill,
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
