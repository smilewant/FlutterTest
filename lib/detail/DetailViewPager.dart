import 'package:flutter/material.dart';

class DetailViewPager extends StatefulWidget {
  List<String> images;
  DetailViewPager(this.images) ;

  @override
  State<StatefulWidget> createState() {
    return _PageState(images);
  }
}

class _PageState extends State<DetailViewPager> {
  int i = 0;
//  var listImages = [
//    'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg',
//    'http://pic.lvmama.com/pics//uploads/pc/place2/2016-05-27/298bb115-309f-4b05-943f-d309745aec40_480_320.jpg',
//    'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/5ab6f8ab-55a1-4080-86ec-5c821a422919.jpg',
//    'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/5ab6f8ab-55a1-4080-86ec-5c821a422919.jpg',
//  ];
  List<String> listImages;

  _PageState(this.listImages) : super();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _pager();
  }

  Widget _pager() {
    return new Container(
        width: double.infinity,
        color: Colors.amberAccent,
        height: 200.0,
        child: new Stack(
          children: <Widget>[
            new Container(
              child: PageView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Image(
                      image: NetworkImage(listImages[index]),
                      fit: BoxFit.fill);
                },
                onPageChanged: (index) {
                  setState(() {
                    i = index;
                  });
                },
                itemCount: listImages.length,
              ),
            ),
//            new Container(
//              child: new PageView(
//                onPageChanged: (index) {
//                  setState(() {
//                    i = index;
//                  });
//                },
//                controller: PageController(
//                  initialPage: 0,
//                ),
//                children: <Widget>[
//                  Image(
//                    image: NetworkImage(
//                        'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/41db0a15-9578-4fcd-8bb1-571d471cbcfd.jpg'),
//                    fit: BoxFit.fill,
//                  ),
//                  Image(
//                    image: NetworkImage(
//                        'http://pic.lvmama.com/pics//uploads/pc/place2/2016-05-27/298bb115-309f-4b05-943f-d309745aec40_480_320.jpg'),
//                    fit: BoxFit.fill,
//                  ),
//                  Image(
//                    image: NetworkImage(
//                        'http://pic.lvmama.com//uploads/pc/place2/2018-08-27/5ab6f8ab-55a1-4080-86ec-5c821a422919.jpg'),
//                    fit: BoxFit.fill,
//                  ),
//                ],
//              ),
//            ),
            new Align(
              //没直接使用Container是因为这里使用Container宽高等同于外层的Container了
                alignment: Alignment.bottomLeft,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Color(0x59000000),
                    borderRadius:
                    new BorderRadius.all(new Radius.circular(10.0)),
                  ),
                  padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 3.0),
                  margin: const EdgeInsets.fromLTRB(15.0, 0, 0, 10.0),
                  child: Text(
                    '自由行 | 产品编号 800810',
                    style: new TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 12.0,
                    ),
                  ),
                )),
            new Align(
              alignment: Alignment.bottomRight,
              child: new Container(
                  decoration: new BoxDecoration(//decoration & foregroundDecoration ： foregroundDecoration在container的最外层
//                  foregroundDecoration: new BoxDecoration(
                    color: Color(0x59000000),
                    borderRadius:
                    new BorderRadius.all(new Radius.circular(10.0)),
                  ),
                  padding: const EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 3.0),
                  margin: const EdgeInsets.fromLTRB(0, 0, 15.0, 10.0),
                  child: new Flex(
                    direction: Axis.horizontal,
                    mainAxisSize: MainAxisSize.min,//宽度wrap？
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image(
                        width: 12.0,
                        height: 10.0,
                        image: AssetImage('assets/holiday_hs_page.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(3.0, 0, 0, 0),
                        child: Text(
                          '${i + 1}/${listImages.length}',
                          style: new TextStyle(
                            color: Color(0xffffffff),
                              fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}
