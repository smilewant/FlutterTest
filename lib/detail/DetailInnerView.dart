import 'package:flutter/material.dart';
import 'package:flutter_app/RealRichText.dart';
import 'package:flutter_app/detail/DetailViewPager.dart';

class DetailInnerView extends StatelessWidget {
  List<String> listImages;

  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        DetailViewPager(addImage()),

        new Container(
          margin: const EdgeInsets.fromLTRB(10, 12.0, 10, 0),
          width: double.maxFinite,
          child: test(),
        )
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
            AssetImage('assets/holiday_blue_diamond.png'),//使用图片记得在pubspec.yaml中添加，否则不显示
            imageWidth: 18,
            imageHeight: 16,
            margin: const EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
          ),

        ]),


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
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text(
          "Aasdfafafsafafasfwefdsfd jhn fghng",
        ),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
        new Text("Aasdfafafsafafasfwefdsfd jhn fghng"),
      ],
    );
  }
}
