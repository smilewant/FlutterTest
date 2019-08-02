import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/copy/page/progress.dart';
import 'package:flutter_app/copy/page/progress_painter.dart';

class CircleProgressWidget extends StatefulWidget {
  final Progress progress;

  CircleProgressWidget({Key key, this.progress}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    return _CircleProgressWidget();
  }

}


class _CircleProgressWidget extends State<CircleProgressWidget>{
  @override
  Widget build(BuildContext context) {
    var proress = Container(
      width: widget.progress.radius * 2,
      height: widget.progress.radius * 2,
      child: CustomPaint(
        painter: ProgressPainter(widget.progress),
      ),
    );
    String txt = "${(100 * widget.progress.value).toStringAsFixed(1)} %";
    var text  = Text(
      widget.progress.value == 1.0 ? widget.progress.completeText : txt,
      style: widget.progress.style ?? TextStyle(fontSize: widget.progress.radius / 6),
    );
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        proress,
        text
      ],
    );
  }
}
