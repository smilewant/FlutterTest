import 'package:flutter/material.dart';
import 'package:flutter_app/copy/card/CardFlipPage.dart';
import 'package:flutter_app/copy/page/list_page.dart';
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
        appBar: AppBar(
            title: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var counter =  Provider.of<ProviderModel>(context);
                return new Text("Provider ${counter.count.toString()}");
              },
            )
        ),
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
                child: new Center(
              child: new Text(counter.count.toString()),
            )),
            new Center(
              child: new FlatButton(
                  onPressed: () {
                    counter.add();
                    Navigator.push(context, new MaterialPageRoute(builder: (context) {
                          return counter.count % 2 == 0 ? new ListPage() : new CardFlipPage();
                    }));
                  },
                  color: Colors.blue,
                  child: new Text("+")),
            )
          ],
        );
      },
    );
  }
}

class ProviderModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void add() {
    _count++;
    notifyListeners();
  }
}
