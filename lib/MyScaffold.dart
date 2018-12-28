import 'package:flutter/material.dart';
import 'package:flutter_app/detail/DetailInnerView.dart';
import 'package:flutter_app/detail/ImmersionAppbar.dart';

class MyScaffold extends StatelessWidget {
  ImmersionAppbar appbar = new ImmersionAppbar(0x00d30775);

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = new ScrollController();
    _controller.addListener(() {
      print('scroll = ${_controller.offset}');
      appbar.setC(color(_controller.offset));
    });

    return new Material(
        child: new Column(
      children: <Widget>[
        new Expanded(
          child: new Stack(children: <Widget>[
            SingleChildScrollView(
              controller: _controller,
              child: DetailInnerView(),
            ),
            appbar,

          ]),
        ),
        BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.bluetooth),
                  title: new Text('1')
              ),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.date_range),
                  title: new Text('2')
              ),
            ]
        )
      ],
    ));
  }

  //颜色渐变
  int color(double offset) {
    int alpha = (offset * 255 ~/ 100) as int;
    for (int i = 31; i >= 0; i--) {
      //int to byte
      alpha >> i & 1;
    }
    alpha = alpha << 24;
    alpha = alpha | 0x00d30775;
    if (offset < 100) {
      return alpha;
    } else {
      return 0xffd30775;
    }
  }


}
