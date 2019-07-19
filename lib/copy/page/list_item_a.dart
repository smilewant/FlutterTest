import 'package:flutter/material.dart';

/*
  比较烦人的是flutter中没有相应变量设置为match_parent
  更烦人的是同一个widget在不同控件下默认值不同，如下Container在最外层默认宽度最宽
  放到column里面后宽度变为子Image的宽度
  至于height，呵呵了，看不懂
 */

class ListItemA extends StatefulWidget {
  final String word;
  ListItemA(this.word);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Item();
  }
}

class Item extends State<ListItemA> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(

      color: Colors.white,
//      elevation:15.0,
      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 4.0 / 1.5,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/holiday_hs_base_top_icon.png'),
                  //如何把image充满父控件,使用fit
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 10.0,
                  left: 10.0,
                  right: 10.0,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.access_alarm),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                      ),
                      Text(widget.word),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_alarm),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                          ),
                          Text("Flutter"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_alarm),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                          ),
                          Text("Flutter"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_alarm),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                          ),
                          Text("Flutter"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "超完整的Flutter项目，功能丰富，适合学习和日常使用。GSYGithubApp系列的优势："
                  "我们目前已经拥有Flutter、Weex、ReactNative、kotlin 四个版本。 功能齐全，项目框架内技术涉及面广，"
                  "完成度高，持续维护，配套文章，适合全面学习，对比参考。跨平台的开源Github客户端App，更好的体验，更丰富的功能，"
                  "旨在更好的日常管理和维护个人Github，提供更好更方便",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(
                color: Color(0xff333333),
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
