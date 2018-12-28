import 'package:flutter/material.dart';
import 'package:flutter_app/detail/DetailViewPager.dart';

class DetailInnerView extends StatelessWidget {
  List<String> listImages;


  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        DetailViewPager(addImage()),
        new Container(
          margin: const EdgeInsets.fromLTRB(0, 12.0, 0, 0),
          width: double.maxFinite,
          child: test(),
        )
      ],
    );
  }

  List<String> addImage(){
    listImages = List();
    listImages.add('http://pic.lvmama.com//uploads/pc/place2/2018-06-28/512b9c8e-fe53-462c-90a0-9f72b0ac66d5_1280_.jpg');
    listImages.add('http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg');
    listImages.add('http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg');
    listImages.add('http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg');
    return listImages;
  }

  Widget test() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
