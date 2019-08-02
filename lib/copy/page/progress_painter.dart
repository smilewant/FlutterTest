import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/copy/page/progress.dart';

class ProgressPainter extends CustomPainter {
  Progress _progress;
  Paint _paint;
  Paint _arrowPaint;
  Path _arrowPath;
  double _radius;

  ProgressPainter(this._progress) {
    _arrowPaint = Paint();
    _arrowPath = Path();
    _paint = Paint();
    _radius = _progress.radius - _progress.strokeWidth / 2;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Offset.zero & size;
    canvas.clipRect(rect);
    canvas.translate(_progress.strokeWidth / 2, _progress.strokeWidth / 2);

    drawProgress(canvas);
    drawArrow(canvas);
    drawDot(canvas);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void drawProgress(Canvas canvas) {
    canvas.save();
    _paint
      ..style = PaintingStyle.stroke
      ..color = _progress.backgroundColor
      ..strokeWidth = _progress.strokeWidth;
    canvas.drawCircle(Offset(_radius, _radius), _radius, _paint);

    _paint
      ..color = _progress.color
      ..strokeWidth = _progress.strokeWidth * 1.2
      ..strokeCap = StrokeCap.round;
    double sweepAngle = _progress.value * 360;
    print(sweepAngle);
    canvas.drawArc(Rect.fromLTRB(0, 0, _radius * 2, _radius * 2),
        -90 / 180 * pi, sweepAngle / 180 * pi, false, _paint);
    canvas.restore();
  }

  void drawArrow(Canvas canvas) {
    canvas.save();
    canvas.translate(_radius, _radius);
    canvas.rotate((180 + _progress.value * 360) / 180 * pi);
    var half = _radius / 2;
    var eg = _radius / 50;
    _arrowPath.moveTo(0, -half - eg * 2);
    _arrowPath.relativeLineTo(eg * 2, eg * 6);
    _arrowPath.lineTo(0, -half + eg * 2);
    _arrowPath.lineTo(0, -half - eg * 2);
    _arrowPath.relativeLineTo(-eg * 2, eg * 6);
    _arrowPath.lineTo(0, -half + eg * 2);
    _arrowPath.lineTo(0, -half - eg * 2);
    canvas.drawPath(_arrowPath, _arrowPaint);
    canvas.restore();
  }

  void drawDot(Canvas canvas) {
    canvas.save();
    int num = _progress.dotCount;
    canvas.translate(_radius, _radius);
    for (double i = 0; i < num; i++) {
      canvas.save();
      double deg  = 360 / num * i;
      canvas.rotate(deg/ 180 * pi);
      _paint
      ..strokeWidth = _progress.strokeWidth / 2
      ..color = _progress.backgroundColor
      ..strokeCap = StrokeCap.round;
      if(i * (360 / num ) <= _progress.value * 360) {
        _paint..color = _progress.color;
      }
      canvas.drawLine(Offset(0, _radius * 3 / 4), Offset(0, _radius * 4 / 5), _paint);
      canvas.restore();
    }
    canvas.restore();
  }
}
