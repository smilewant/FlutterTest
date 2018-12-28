import 'package:flutter/material.dart';
import 'package:flutter_app/detail/DetailInnerView.dart';
import 'package:flutter_app/detail/ImmersionAppbar.dart';

class MyDetailPage extends StatelessWidget {
  ImmersionAppbar appbar = new ImmersionAppbar(0x00ffffff);

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = new ScrollController();
    _controller.addListener(() {
      print('scroll = ${_controller.offset}');

      appbar.setC(_controller.offset);
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
        BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.bluetooth), title: new Text('1')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.date_range), title: new Text('2')),
        ]),
      ],
    ));
  }
}
