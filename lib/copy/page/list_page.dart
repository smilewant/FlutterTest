import 'dart:async';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/copy/page/list_item_a.dart';
import 'package:flutter_app/detail/MyDetailPage.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page();
  }
}

class Page extends State<ListPage> {
  static const loadingTag = "##";
  var _words = <String>[loadingTag];
  ScrollController _controller = new ScrollController();
  var state = 0; //state = 0 加载完成 state =1 正在加载

  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        state = 1;
        _retrieveData();
      }
    });

    return Material(
      color: Color(0xffe4e4e4),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            color: Colors.red,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: GestureDetector(
//                onTap: () => _retrieveData(),
                child: Text(
                  "关注列表",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color(0xaf333333)),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                //这里Container可以不需要
//              color: Colors.blue,
                child: RefreshIndicator(
                    child: ListView.builder(
                      controller: _controller,
                      padding: const EdgeInsets.only(top: 10.0),
                      //距离顶部有一个statusbar的空白
                      itemBuilder: (context, index) {
                        if (_words[index] == loadingTag) {
                          if (_words.length - 1 < 30) {
                            if (state == 1) {
                              return Container(
                                alignment: Alignment(0.0, 0.0),
                                child: SizedBox(
                                  width: 24.0,
                                  height: 24.0,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.0,
                                  ),
                                ),
                              );
                            } else {
                              return Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "上拉加载更多",
                                    style: TextStyle(color: Colors.grey),
                                  ));
                            }
                          } else {
                            return Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  "没有更多了",
                                  style: TextStyle(color: Colors.grey),
                                ));
                          }
                        }
                        return GestureDetector(
                          onTap: () => _navigate(MyDetailPage()),
                          child: new ListItemA(_words[index]),
                        );
//                return new Text(_words[index]);
                      },
                      itemCount: _words.length,
                    ),
                    onRefresh: _refresh)),
          )
        ],
      ),
    );
  }

  Future<Null> _refresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      _words.clear();
      _words.add(loadingTag);
//                      state = 1;
      _words.insertAll(_words.length - 1,
          generateWordPairs().take(3).map((e) => e.asPascalCase).toList());
      state = 0;
      setState(() {});
      return null;
    });
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
//      _words.clear();
//      _words.add(loadingTag);
      if (_words.length > 30) return;
      _words.insertAll(_words.length - 1,
          generateWordPairs().take(3).map((e) => e.asPascalCase).toList());
      state = 0;
      setState(() {});
    });
  }

  void _navigate(Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }

  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
