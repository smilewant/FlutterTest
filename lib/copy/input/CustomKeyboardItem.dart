import 'package:flutter/material.dart';

class CustomKeyboardItem extends StatefulWidget {

  String text;
  final callback;

  CustomKeyboardItem({Key key, this.text, this.callback})  : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return ButtonState();
  }

}

class ButtonState extends State<CustomKeyboardItem> {
  var backMethod;
  void back() {
    widget.callback('$backMethod');
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var _screenWidth = mediaQueryData.size.width;
    return new Container(
      height: 50.0,
      width: _screenWidth / 3,
      child: new OutlineButton(
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(0.0)),
          borderSide: new BorderSide(color: Color(0xffdddddd)),
          child: new Text(
            widget.text,
            style: new TextStyle(color: Color(0xff333333), fontSize: 20.0),
          ),
          onPressed: back),
    );
  }

}