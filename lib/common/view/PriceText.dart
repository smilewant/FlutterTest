import 'package:flutter/material.dart';

class PriceText extends StatefulWidget {
  var color;
  var fontSize;
  PriceText(this.color, this.fontSize);

  @override
  State<StatefulWidget> createState() {
    return PriceState();
  }

}

class PriceState extends State<PriceText> {
  @override
  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        Text(
          "¥",
          style: TextStyle(
            fontSize: widget.fontSize - 4,
            color: Color(widget.color),
          ),
        ),
        Text(
          "1060",
          style: TextStyle(
            fontSize: widget.fontSize,
            color: Color(widget.color),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "起",
          style: TextStyle(
            fontSize: widget.fontSize - 2,
            color: Color(0xff666666),
          ),
        ),
      ],
    );
  }

}