import 'package:flutter/material.dart';

class Progress {
  double value;
  Color color;
  Color backgroundColor;
  double radius;
  double strokeWidth;
  int dotCount;
  TextStyle style;
  String completeText;

  Progress({
    this.value,
    this.color,
    this.backgroundColor,
    this.radius,
    this.strokeWidth,
    this.dotCount = 40,
    this.style,
    this.completeText = "OK"
  });
}