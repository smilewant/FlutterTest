import 'package:flutter/material.dart';
import 'package:flutter_app/common/view/PriceText.dart';
import 'package:flutter_app/common/view/RealRichText.dart';
import 'package:flutter_app/detail/DetailFunctionView.dart';
import 'package:flutter_app/detail/DetailViewPager.dart';

class DetailInnerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InnerView();
  }
}

class _InnerView extends State<DetailInnerView> {
  List<String> listImages;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DetailViewPager(addImage()),
        new Container(
          padding: const EdgeInsets.fromLTRB(10, 12.0, 10, 0),
          color: Colors.white,
          width: double.maxFinite,
          child: test(),
        ),
        calendar(),
      ],
    );
  }

  List<String> addImage() {
    listImages = List();
    listImages.add(
        'http://pic.lvmama.com//uploads/pc/place2/2018-06-28/512b9c8e-fe53-462c-90a0-9f72b0ac66d5_1280_.jpg');
    listImages.add(
        'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg');
    listImages.add(
        'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg');
    listImages.add(
        'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg');
    return listImages;
  }

  Widget test() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RealRichText([
          TextSpan(
            text:
                '苏州雅杰大酒店（吴中店）1晚＋双人自助早餐＋景点多选1（四季悦水游村／华谊兄弟电影世界／夜游网师园／夜游金鸡湖等），免费停车及免费wifi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Color(0xff333333),
            ),
          ),
          ImageSpan(
            AssetImage('assets/holiday_blue_diamond.png'),
            //使用图片记得在pubspec.yaml中添加，否则不显示
            imageWidth: 18,
            imageHeight: 16,
            margin: const EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
          ),
        ]),
        DetailFunctionView(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: PriceText(0xffd03775, 14.0),
        ),


        GestureDetector(
          onTap: () {
            print('scroll = null');
          },
          child: new Text(
            'Example title',
            style: new TextStyle(
                fontSize: 20.0, color: Color.fromARGB(0xff, 0xd3, 0x07, 0x75)),
//            textAlign: TextAlign.left,
          ),
        ),
        new Container(
          color: Colors.blue,
          child: new Text('this is a test for width '),
        ),
      ],
    );
  }

  Widget calendar(){
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Text(
                      '选择出游人数',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xff333333),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                      child: Text(
                        '1份 （每份含成人2人）',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xff666666),
                        ),
                      ),
                    )

                  ],
                )
              ),
              Align(
                alignment: Alignment.topRight,
                child: RealRichText([
                  TextSpan(
                    text:'更改',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff666666),
                    ),
                  ),
                  ImageSpan(
                    AssetImage('assets/holiday_group_arrow_with_gap.png'), //使用图片记得在pubspec.yaml中添加，否则不显示
                    imageWidth: 12,
                    imageHeight: 12,
                    margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                  ),
                ]),
              )
            ],
          ),


        ],
      ),
    );
  }
}
