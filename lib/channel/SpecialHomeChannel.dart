import 'package:flutter/material.dart';
import 'package:flutter_app/appbar/ImmersionAppBar.dart';
import 'package:flutter_app/channel/channel_top.dart';
import 'package:flutter_app/common/foundation/ColorUtils.dart';
import 'package:flutter_app/common/view/PriceText.dart';

class SpecialHomeChannel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SpecialHomeChanel();
  }
}

class _SpecialHomeChanel extends State<SpecialHomeChannel> {
  ScrollController _controller = new ScrollController();
  ImmersionAppbar appbar = new ImmersionAppbar(0x00ffffff);

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      print('scroll = ${_controller.offset}');

      appbar.setC(_controller.offset);
    });
    return Material(
      child: Stack(children: <Widget>[
        SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: <Widget>[
              ChannelTop(),
              //数据
              Container(
                color: Colors.white54,
//                padding: const EdgeInsets.all(5.0),
                child: new GridView.builder(
                  addRepaintBoundaries: false,
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(5),
                  cacheExtent: 0,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//                      childAspectRatio: 1, //宽高比
                      crossAxisSpacing: 5.0, //左右间隔
                      mainAxisSpacing: 5.0, // 上下间隔
                      crossAxisCount: 2 //每行列数
                      ),
                  itemBuilder: (BuildContext context, int index) {
                    return new GridTile(
                        child: Column(
                      children: <Widget>[
                        Container(
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            borderRadius: new BorderRadius.only(
                                topLeft: new Radius.circular(7.0),
                                topRight: new Radius.circular(7.0)),
                          ),
                          child: Image(
//                              width: double.infinity,
//                              height: double.nan,
                              image: AssetImage('assets/groupon_bar_bg.png')),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                        ),
                        Text(
                          "三亚三天三夜三更半夜跳舞不停歇",
                          maxLines: 2,
                          style: TextStyle(
                            color: ColorUtils.color_333333,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                        ),
                        Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(-1.0, 1.0),
                              child: PriceText(0xffd03775, 16.0),
                            ),
                            Expanded(
                              child: Text(""),
                            ),
                            Align(
                              alignment: Alignment(1.0, 1.0),
                              child: Container(
                                decoration: new BoxDecoration(
                                  color: ColorUtils.color_d30775,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: new Radius.circular(7.0),
                                      topRight: new Radius.circular(7.0)),
                                ),
                                child: Text("立即抢"),
                              ),
                            )
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                        ),
                        Container(
                          alignment:Alignment(-1.0, 0),
                          child: Text(
                            "已售12份",
                            softWrap: false,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorUtils.color_999999,
                              fontSize: 12,
                            ),
                          ),
                        ),

                      ],
                    ));
                  },
                ),
              )
            ],
          ),
        ),
        appbar,
      ]),
    );
  }
}
