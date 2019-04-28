import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ScreenUtil {
  double _screenWidth;

  static ScreenUtil _screenUtil;

  static ScreenUtil getInstance() {
    if(_screenUtil == null) {
      _screenUtil = ScreenUtil();
      _screenUtil._init();
    }
    return _screenUtil;
  }

  _init() {
    MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);
    if (mediaQueryData != null) {
      _screenWidth = mediaQueryData.size.width;
    }
  }

  double get screenWidth => _screenWidth;
}
