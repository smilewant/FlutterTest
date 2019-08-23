import 'package:flutter/material.dart';
import 'package:flutter_app/copy/card/CardFlipPage.dart';
import 'package:flutter_app/copy/card/dialog_show.dart';
import 'package:flutter_app/copy/page/circle_progress_widget.dart';
import 'package:flutter_app/copy/page/list_page.dart';
import 'package:flutter_app/copy/page/progress.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProviderState();
  }
}

class _ProviderState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(builder: (_) => ProviderModel())],
      child: Scaffold(
        appBar: AppBar(title: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            var counter = Provider.of<ProviderModel>(context);
            print("${DateTime.now().year}");
            return new Text("Provider ${counter._time}");
          },
        )),
        body: CountWidget(),
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderModel>(
      builder: (context, counter, _) {
        return new Column(
          children: <Widget>[
            new Expanded(
                child: Stack(
              children: <Widget>[
                new Center(
                  child: CircleProgressWidget(
                      progress: Progress(
                          backgroundColor: Colors.grey,
                          value: counter.count / 10,
                          radius: 100,
                          completeText: "完成",
                          color: Color(0xff46bcf6),
                          strokeWidth: 4)),
                ),
              ],
            )),
            new Center(
                child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: new FlatButton(
                      onPressed: () {
                        counter.add();
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return counter.count % 2 == 0
                              ? new ListPage()
                              : new CardFlipPage();
                        }));
                      },
                      color: Colors.blue,
                      child: new Text("+")),
                ),
              ],
            ))
          ],
        );
      },
    );
  }
}

class ProviderModel extends ChangeNotifier {
  int _count = 0;
  var _time = DateTime.now();

  int get count => _count;
  int get time => _time.year;

  void add() {
    _count++;
    notifyListeners();
  }
}
