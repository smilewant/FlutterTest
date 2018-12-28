import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      color: Color.fromARGB(0xff, 0xff, 0xff, 0x0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'navigation menu',
            onPressed: null,
          ),
          new Expanded(
            child: new Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}