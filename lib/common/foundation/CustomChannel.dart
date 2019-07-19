import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_app/bean/NativeVo.dart';

class CustomChannel {
  final MethodChannel commomChanel =
  const MethodChannel('com.lvmama.lvflutterChannel');

  static CustomChannel _channel;

  static CustomChannel getInstance() {
    if (_channel == null) {
      _channel = new CustomChannel();
    }
    return _channel;
  }


  jump(String methodName, NativeVo vo) {
    _channel.jumpToApp(methodName, vo);
  }

  Future<void> jumpToApp(String methodName, NativeVo vo) async {
    // Errors occurring on the platform side cause invokeMethod to throw
    // PlatformExceptions.
//    NativeVo model = NativeVo.fromJson(vo);
    print("model.toString() ${jsonEncode(vo)}");
//    a.addAll(Map("",""));
    try {
      await commomChanel.invokeMethod(methodName, jsonEncode(vo));
    } on PlatformException catch (e) {
      throw 'Unable to play  ${e.message}';
    }
  }

  void setMethodCallHandler(Future<dynamic> handler(MethodCall call)){
    commomChanel.setMethodCallHandler(handler);
  }
}
