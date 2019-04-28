import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/MyScaffold.dart';
import 'package:flutter_app/channel/SpecialHomeChannel.dart';
import 'package:flutter_app/copy/input/CustomJPasswordField.dart';
import 'package:flutter_app/copy/input/CustomKeyPage.dart';
import 'package:flutter_app/detail/MyDetailPage.dart';

void main() {
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  runApp(new MaterialApp(debugShowCheckedModeBanner : false,
    home: new MyDetailPage(),
  ));
}
