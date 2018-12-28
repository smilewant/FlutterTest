import 'package:flutter/material.dart';
import 'package:flutter_app/copy/input/MyPasswordView.dart';

class CustomJPasswordField extends StatelessWidget {
  String data;
  CustomJPasswordField(this.data);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPasswordView(data),
    );
  }
}
