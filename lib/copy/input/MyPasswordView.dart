import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class MyPasswordView extends CustomPainter {
  String pwdStr;

  MyPasswordView(this.pwdStr);

  @override
  void paint(Canvas canvas, Size size) {
    Paint mPwdPaint = new Paint();
    mPwdPaint.color = Color(0xffdddddd);

    Paint mRectPaint = new Paint();
    mRectPaint.color = Color(0xffdddddd);
    //  圆角矩形的绘制
    RRect r = new RRect.fromLTRBR(0.0, 0.0, size.width, size.height,
        new Radius.circular(size.height / 12));
    mRectPaint.style = PaintingStyle.stroke;
    canvas.drawRRect(r, mRectPaint);

    var per = size.width / 6.0;
    var offsetX = per;
    while (offsetX < size.width) {
      canvas.drawLine(new Offset(offsetX, 0.0),
          new Offset(offsetX, size.height), mRectPaint);
      offsetX += per;
    }
    //  将其分成六个 格子（六位支付密码）
    var half = per / 2;
    var ratio = per / 8;
    mPwdPaint.style = PaintingStyle.fill;
    print('MyPasswordView + $pwdStr.length');

    for (int i = 0; i < pwdStr.length && i < 6; i++) {
      canvas.drawArc(
          //画圆
          new Rect.fromLTRB(i * per + half - ratio, size.height / 2 - ratio,
              i * per + half + ratio, size.height / 2 + ratio),
          0.0,
          2 * ratio,
          false,
          mPwdPaint);

      //画文字
      ui.ParagraphBuilder builder = new ui.ParagraphBuilder(
          new ui.ParagraphStyle(fontStyle: FontStyle.italic));
      builder.pushStyle(ui.TextStyle(color: Color(0xffd30775), fontSize: 16.0));
      builder.addText(pwdStr.substring(i, i + 1));
      canvas.drawParagraph(
          builder.build()..layout(ui.ParagraphConstraints(width: ratio / 2)),
          new Offset(i * per + half - ratio, size.height / 2 - 8));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
