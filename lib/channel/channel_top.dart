import 'package:flutter/material.dart';
import 'package:flutter_app/common/foundation/ScreenUtil.dart';

class ChannelTop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChannelView();
  }
}

class _ChannelView extends State<ChannelTop> {
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
//            alignment: FractionalOffset(2, 2),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '限时抢购',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
//                    Expanded(child: Text('每天十点更新')),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                      Text(
                        '每天10点更新',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '',
                        ),
                      ),
                      Text(
                        '距结束',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(2.0)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '11',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                        child: Text(
                          ':',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        decoration: new BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(2.0)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '11',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                        child: Text(
                          ':',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(2.0)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '11',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  )
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
