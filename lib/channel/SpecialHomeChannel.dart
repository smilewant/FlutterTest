import 'package:flutter/material.dart';
import 'package:flutter_app/appbar/ImmersionAppBar.dart';
import 'package:flutter_app/channel/channel_top.dart';

class SpecialHomeChannel extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SpecialHomeChanel();
  }

}


class _SpecialHomeChanel extends State<SpecialHomeChannel>  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: <Widget>[
          ImmersionAppbar(0x00ffffff),
          ChannelTop(),
        ],
      ),
    );
  }

}

