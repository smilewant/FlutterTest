import 'package:flutter/material.dart';
import 'package:flutter_app/copy/input/CustomKeyboardItem.dart';
import 'package:flutter_app/copy/input/KeyEvent.dart';

class CustomKeyboard extends StatefulWidget {
  final callback;

  CustomKeyboard(this.callback);

  @override
  State<StatefulWidget> createState() {
    return new CustomKeyboardStat();
  }
}

class CustomKeyboardStat extends State<CustomKeyboard> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  var backMethod;
  void onCommitChange(BuildContext cont) {
    widget.callback(new KeyEvent("commit"));
  }

  void onOneChange(BuildContext cont) {
    print('widget.callback 1');
    widget.callback(new KeyEvent("1"));
  }

  void onTwoChange(BuildContext cont) {
    widget.callback(new KeyEvent("2"));
  }

  void onThreeChange(BuildContext cont) {
    widget.callback(new KeyEvent("3"));
  }

  void onFourChange(BuildContext cont) {
    widget.callback(new KeyEvent("4"));
  }

  void onFiveChange(BuildContext cont) {
    widget.callback(new KeyEvent("5"));
  }

  void onSixChange(BuildContext cont) {
    widget.callback(new KeyEvent("6"));
  }

  void onSevenChange(BuildContext cont) {
    widget.callback(new KeyEvent("7"));
  }

  void onEightChange(BuildContext cont) {
    widget.callback(new KeyEvent("8"));
  }

  void onNineChange(BuildContext cont) {
    widget.callback(new KeyEvent("9"));
  }

  void onZeroChange(BuildContext cont) {
    widget.callback(new KeyEvent("0"));
  }

  void onDeleteChange(BuildContext cont) {
    widget.callback(new KeyEvent("del"));
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      key: _globalKey,
      width: double.maxFinite,
      height: 250.0,
      child: new Column(
        children: <Widget>[
          new Container(
            height: 30.0,
            color: Colors.white,
            alignment: Alignment.center,
            child: new Text(
              '下滑隐藏',
              style: new TextStyle(fontSize: 12.0, color: Color(0xff999999)),
            ),
          ),

          new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  CustomKeyboardItem(text: '1', callback: (val) => onOneChange(context),),
                  CustomKeyboardItem(text: '2', callback: (val) => onTwoChange(context),),
                  CustomKeyboardItem(text: '3', callback: (val) => onThreeChange(context),),
                ],
              ),

              new Row(
                children: <Widget>[
                  CustomKeyboardItem(text: '4', callback: (val) => onFourChange(context),),
                  CustomKeyboardItem(text: '5', callback: (val) => onFiveChange(context),),
                  CustomKeyboardItem(text: '6', callback: (val) => onSixChange(context),),
                ],
              ),

              new Row(
                children: <Widget>[
                  CustomKeyboardItem(text: '7', callback: (val) => onSevenChange(context),),
                  CustomKeyboardItem(text: '8', callback: (val) => onEightChange(context),),
                  CustomKeyboardItem(text: '9', callback: (val) => onCommitChange(context),),
                ],
              ),

              new Row(
                children: <Widget>[
                  CustomKeyboardItem(text: 'del', callback: (val) => onDeleteChange(context),),
                  CustomKeyboardItem(text: '0', callback: (val) => onZeroChange(context),),
                  CustomKeyboardItem(text: 'confirm', callback: (val) => onOneChange(context),),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }

}