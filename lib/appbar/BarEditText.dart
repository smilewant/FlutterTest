import 'package:flutter/material.dart';

class BarEditText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BarEditState();
  }
}

class BarEditState extends State<BarEditText> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        ),
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
        child: Row(
          children: <Widget>[
            Text(
              '上海',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 12.0,
              ),
            ),
            Image(
              width: 8,
              height: 4.4,
              image: AssetImage('assets/comm_bottom_down_arrow.png'),
            ),
            Divider(
              color: Color(0xff999999),
            ),
            Text(
              '输入目的地、关键词',
              style: TextStyle(
                color: Color(0xffbbbbbb),
                fontSize: 12.0,
              ),
            ),
          ],
        ));
  }
}
