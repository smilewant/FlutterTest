import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/appbar/BarEditText.dart';

class ImmersionAppbar extends StatefulWidget {
  ImmersionAppbar(this.colors);

  final int colors;
  final ImmersionState _state = new ImmersionState();

  void setC(offset) {
    _state.setColor(offset);
  }

  @override
  State<StatefulWidget> createState() {
    return _state;
  }

  //颜色渐变
  int colorChange(double offset, int finalColor) {
    int alpha = offset * 255 ~/ 200;
    print('offset = $offset');
    print('alpha = $alpha');
    if (offset > 200) {
      alpha = 255;
    }
    alpha = alpha << 24; //int to byte
    alpha = alpha | finalColor;

    return alpha;
  }
}

class ImmersionState extends State<ImmersionAppbar> {
  double offset = 0;
  void setColor(offset) {
    setState(() {
      this.offset = offset;
    });
  }

  int colorChange(double offset, int finalColor) {
    int alpha = offset * 255 ~/ 200;
    print('offset = $offset');
    print('alpha = $alpha');
    if (offset > 200) {
      alpha = 255;
    }
    alpha = alpha << 24; //int to byte
    alpha = alpha | finalColor;

    return alpha;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height:
          MediaQueryData.fromWindow(window).padding.top + 56, //获取Android状态栏高度
      color: Color(colorChange(offset, 0x00d30775)),
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
                child: BarEditText(),
              ),
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
