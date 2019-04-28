import 'package:flutter/material.dart';
import 'package:flutter_app/common/view/PriceText.dart';

class ProductItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ItemView();
  }

}

class _ItemView extends State<ProductItem>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Image.network('',
        width: 12,
        height: 12,),
        Text(
          '横店两天三晚',
          maxLines: 2,
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
        Stack(
          children: <Widget>[
            PriceText(0xffd03775, 16.0),

            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '降价提醒',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

}