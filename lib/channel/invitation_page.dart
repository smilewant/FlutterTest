import 'package:flutter/material.dart';
import 'package:flutter_app/CountWidget.dart';
import 'package:flutter_app/appbar/ImmersionAppBar.dart';
import 'package:flutter_app/common/foundation/ColorUtils.dart';
import 'package:flutter_app/common/view/PriceText.dart';

class InvitationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InvitationPage();
  }
}

class _InvitationPage extends State<InvitationPage> {
  ImmersionAppbar appbar = new ImmersionAppbar(0x00ffffff);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: <Widget>[
        ListView.builder(
          addRepaintBoundaries: false,
          itemCount: 4,
          shrinkWrap: true,
          padding: const EdgeInsets.all(5),
          cacheExtent: 0,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Column(
                  children: <Widget>[
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
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                    ),
                    Container(
                      alignment: Alignment(-1.0, 0),
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
//        appbar,
      ]),
    );
  }
}
