import 'package:flutter/material.dart';
import 'package:flutter_app/channel/LimitTimeTitle.dart';
import 'package:flutter_app/common/foundation/ColorUtils.dart';
import 'package:flutter_app/common/foundation/ScreenUtil.dart';

class ChannelTop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChannelView();
  }
}

class _ChannelView extends State<ChannelTop> {
  int item = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.cyanAccent,
//      alignment: Alignment.bottomCenter,

      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Image(
            fit: BoxFit.fill,
            width: double.infinity,
            height: ScreenUtil.getInstance().screenWidth / 5 * 3,
            image: AssetImage('assets/groupon_bar_bg.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                children: <Widget>[
                  LimitTimeTitle(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      color: Color(0x33d30775),
                      borderRadius: new BorderRadius.only(
                          topLeft: new Radius.circular(7.0),
                          topRight: new Radius.circular(7.0)),
                    ),
                    child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              item = 0;
                              setState(() {

                              });
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                              decoration: new BoxDecoration(
                                color: item == 0 ? ColorUtils.color_ffffff : null,
                                borderRadius: new BorderRadius.only(
                                    topLeft: new Radius.circular(7.0),
                                    topRight: new Radius.circular(7.0)),
                              ),
                              child: Text(
                                '今日疯抢',
                                style: TextStyle(
                                  color: item == 0 ? ColorUtils.color_333333 : ColorUtils.color_ffffff,
                                  fontSize: item == 0 ? 20 : 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              item = 1;
                              setState(() {

                              });
                            },
                            child: Container(
                              padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                              alignment: Alignment(0, 0),
                              decoration: new BoxDecoration(
                                color:
                                    item == 1 ? ColorUtils.color_ffffff : null,
                                borderRadius: new BorderRadius.only(
                                    topLeft: new Radius.circular(7.0),
                                    topRight: new Radius.circular(7.0)),
                              ),
                              child: Text(
                                '明日预告',
                                style: TextStyle(
                                  color: item == 1 ? ColorUtils.color_333333 : ColorUtils.color_ffffff,
                                  fontSize: item == 1 ? 20 : 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
//          SizedBox(
//            width: 250,
//            height: 250,
//            child: Stack(
//              children: <Widget>[
//                Container(
//                  width: 250,
//                  height: 250,
//                  color: Colors.red,
//                ),
//                Container(
//                  padding: EdgeInsets.all(25.0),
//                  color: Colors.blue,
//                  alignment: Alignment.bottomCenter,
////                  decoration: BoxDecoration(
////                    gradient: LinearGradient(
////                      begin: Alignment.topCenter,
////                      end: Alignment.bottomCenter,
////                      colors: <Color>[
////                        Colors.black.withAlpha(0),
////                        Colors.black12,
////                        Colors.black45
////                      ],
////                    ),
////                  ),
//                  child: Text(
//                    "Foreground Text",
//                    style: TextStyle(color: Colors.white, fontSize: 20.0),
//                  ),
//                ),
//              ],
//            ),
//          )
        ],
      ),
    );
  }
}
