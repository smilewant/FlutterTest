import 'dart:async';

import 'package:flutter/material.dart';

class LimitTimeTitle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LimitTimeState();
  }

}

class _LimitTimeState extends State<LimitTimeTitle> {
  Timer _timer;
  int time = 12;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t){

      setState(() {
        time--;
        if(time < 1) _timer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    this._startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    this._timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      crossAxisAlignment:CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          '限时抢购',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
//                    Expanded(child: Text('每天十点更新')),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        ),

        Text(
          '每天10点更新',
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),

        Expanded(
          child: Text(
            '',
          ),
        ),
        Text(
          '距结束',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
        ),
        Container(
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius:
            new BorderRadius.all(new Radius.circular(2.0)),
          ),
          alignment: Alignment.center,
          child: Text(
            time.toString(),
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          child: Text(
            ':',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        Container(
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius:
            new BorderRadius.all(new Radius.circular(2.0)),
          ),
          alignment: Alignment.center,
          child: Text(
            time.toString(),
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          child: Text(
            ':',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius:
            new BorderRadius.all(new Radius.circular(2.0)),
          ),
          alignment: Alignment.center,
          child: Text(
            time.toString(),
            style: TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

}