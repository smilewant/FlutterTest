import 'package:flutter/material.dart';
import 'package:flutter_app/common/view/RealRichText.dart';

class DetailFunctionView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FunctionView();
  }
}

class _FunctionView extends State<DetailFunctionView> {
  var items = [
    '新年快乐',
    '大吉大利',
    '梦想成真',
    '一路向前',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: new BoxDecoration(
        color: Color(0xfff6f6fa),
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
      ),
      padding: const EdgeInsets.fromLTRB(12.0, 0, 10.0, 0),
      margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      child: Row(
        children: <Widget>[
          Image(
            width: 27.0,
            height: 31.0,
            image: AssetImage('assets/ensure_bg.png'),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
              child: Column(
//                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 3.0),
                    child: Text(
                      '服务保障',
                      style: TextStyle(
                        fontSize: 13.0,
                        wordSpacing: 2.0,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  new GridView.builder(
                    addRepaintBoundaries: false,
                    itemCount: items.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    cacheExtent: 0,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 5.0, //宽高比
                        crossAxisSpacing: 2.0, //左右间隔
                        mainAxisSpacing: 2.0, // 上下间隔
                        crossAxisCount: 4 //每行列数
                        ),
                    itemBuilder: (BuildContext context, int index) {
                      return new GridTile(
                        child: RealRichText([
                          ImageSpan(
                            AssetImage('assets/xiaoyao_mark.png'), //使用图片记得在pubspec.yaml中添加，否则不显示
                            imageWidth: 12,
                            imageHeight: 12,
                            margin: const EdgeInsets.fromLTRB(0, 0, 3.0, 0),
                          ),
                          TextSpan(
                            text:'${items[index]}',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff666666),
                            ),
                          ),

                        ]),

                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Image(
            width: 9.0,
            height: 14.0,
            image: AssetImage('assets/holiday_group_arrow_with_gap.png'),
          ),
        ],
      ),
    );
  }
}
