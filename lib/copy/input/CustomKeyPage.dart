import 'package:flutter/material.dart';
import 'package:flutter_app/copy/input/CustomJPasswordField.dart';
import 'package:flutter_app/copy/input/CustomKeyboard.dart';
import 'package:flutter_app/copy/input/KeyEvent.dart';

class CustomKeyPage extends StatefulWidget {
  static final String sName = "enter";

  @override
  State<StatefulWidget> createState() {
    return new KeyState();
  }
}

class KeyState extends State<CustomKeyPage> {
  String pwd = '';
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  VoidCallback _showBottomSheetCallback;

  void initState() {
    _showBottomSheetCallback = _showBottomSheet;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _globalKey,
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext c) {
    return new Container(
      width: double.maxFinite,
      height: 300.0,
      color: Color(0xffffffff),
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: new Text(
              "pls input your password",
              style: new TextStyle(fontSize: 18.0, color: Color(0xff333333)),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: _buildPwd(pwd),
          ),
//          new CustomKeyboard(_onKeyDown),
        ],
      ),
    );
  }

  Widget _buildPwd(String pwd) {
    return new GestureDetector(
      child: new Container(
        width: 250.0,
        height: 40.0,
//        color: Colors.black,
        child: new CustomJPasswordField(pwd),
      ),
      onTap: () {
        _showBottomSheetCallback();
      },
    );
  }

  void onAffirmButton() {}

  void _onKeyDown(KeyEvent data) {
    print('_onKeyDown ${data.key} + $pwd.length');
    if (data.isDelete()) {
      if (pwd.length > 0) {
        pwd = pwd.substring(0, pwd.length - 1);
        setState(() {});
      }
    } else if (data.isCommit()) {
      if (pwd.length != 6) {
        return;
      }
    } else {
      if (pwd.length < 6) {
        pwd += data.key;
      }
      setState(() {});
    }
  }

  void _showBottomSheet() {
    setState(() {
      _showBottomSheetCallback = null;
    });

    _globalKey.currentState
        .showBottomSheet<void>((BuildContext context) {
          return new CustomKeyboard(_onKeyDown);
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showBottomSheetCallback = _showBottomSheet;
            });
          }
        });
  }
}
