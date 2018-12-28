import 'dart:ui';

import 'package:flutter/material.dart';

class ImmersionAppbar extends StatefulWidget {
  ImmersionAppbar(this.colors);

  int colors;
  int titleColor = 0xffffffff;
  ImmersionState _state = new ImmersionState();

  void setC(offset) {
    _state.setColor();
    colors = colorChange(offset, 0x00d30775);
    titleColor = colorChange(offset, 0x00ffffff);

  }

  @override
  State<StatefulWidget> createState() {
    return _state;
  }

  //颜色渐变
  int colorChange(double offset, int finalColor) {
    int alpha = offset * 255 ~/ 200;
    print('offset = ${offset}');
    print('alpha = ${alpha}');
    if(offset < 200) {
      for (int i = 31; i >= 0; i--) {
        //int to byte
        alpha >> i;
      }
    } else {
      alpha = 255;
    }
    alpha = alpha << 24;
    alpha = alpha | finalColor ;

    return alpha;

  }
}

class ImmersionState extends State<ImmersionAppbar> {
  void setColor() {

    setState(() {
//      widget.colors = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height:
          MediaQueryData.fromWindow(window).padding.top + 56, //获取Android状态栏高度
      color: Color(widget.colors),
      child: new Column(
        children: <Widget>[
          new Padding(
              padding: new EdgeInsets.only(
                  top: MediaQueryData.fromWindow(window).padding.top)),
          new Row(
            children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.menu),
                tooltip: 'navigation menu',
                onPressed: null,
              ),
              new Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.colors = 0xffd30775;
                  });
                },
                child: new Text(
                  'Example title',
                  style:
                      new TextStyle(color: Color(widget.titleColor), fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              )),
              new IconButton(
                icon: new Icon(Icons.menu),
                tooltip: 'navigation menu',
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
