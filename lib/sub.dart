import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/MyAppBar.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    new MaterialApp(
      title: 'my app',
//      home: new MyScaffold(),
      home: new ShoppingList(
        products: <Product>[
          new Product(name: 'Eggs'),
          new Product(name: 'Flour'),
          new Product(name: 'Chocolate chips'),
        ],
      ),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text("Hello"),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "add",
        child: new Icon(Icons.map),
        onPressed: null,
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("myButton was tapped");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(15.0),
          color: Colors.red[500],
        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,
          child: new Text('Increment'),
        ),
        new Text('Count: $_counter'),
        new CounterIncrementor(
          onPressed: _increment,
        ),
        new CounterDisplay(
          count: _counter,
        )
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return new Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text('Increment'),
    );
  }
}

class Product {
  const Product({this.name});

  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: new ObjectKey(product));

  Color _getColor(BuildContext context) {
    return inCart ? Colors.greenAccent : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
//    if (!inCart) return null;
    return new TextStyle(
      color: !inCart ? Colors.blue : Colors.red,
      decoration: !inCart ? TextDecoration.none : TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
//      title: new Text(product.name, style: _getTextStyle(context),),
      title: new FutureBuilder<Post>(
          future: fetchPost(),
          builder: (context, snaphot) {
            if (snaphot.hasData) {
              return new Text(
                snaphot.data.title,
                style: _getTextStyle(context),
              );
            } else if (snaphot.hasError) {
              return new Text(
                "${snaphot.error}",
                style: _getTextStyle(context),
              );
            }

            return new CircularProgressIndicator(
              backgroundColor: Colors.red,
            );
          }),
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);
  final List<Product> products;

  @override
  State<StatefulWidget> createState() {
    return new _ShoppingListState();
  }
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
        backgroundColor: Colors.blue,
      ),
//      body: new ListView(
//        padding: new EdgeInsets.symmetric(vertical: 8.0),
//        children: widget.products.map((Product product) {
//          return new ShoppingListItem(
//            product: product,
//            inCart: _shoppingCart.contains(product),
//            onCartChanged: _handleCartChanged,
//          );
//        }).toList(),
//      ),
      body: new FutureBuilder<Post>(
          future: fetchPost(),
          builder: (context, snaphot) {
            if (snaphot.hasData) {
              return new ListView(
                padding: new EdgeInsets.symmetric(vertical: 8.0),
                children: widget.products.map((Product product) {
                  return new ShoppingListItem(
                    product: product,
                    inCart: _shoppingCart.contains(product),
                    onCartChanged: _handleCartChanged,
                  );
                }).toList(),
              );
            } else if (snaphot.hasError) {
              return new Text(
                "${snaphot.error}",
              );
            }

            return new CircularProgressIndicator(
              backgroundColor: Colors.red,
            );
          }),
    );
  }
}

Future<Post> fetchPost() async {
  final response = await http.get(
    'https://jsonplaceholder.typicode.com/posts/1',
    headers: {
//      HttpHeaders.AUTHORIZATION: "Basic your_api_token_here"
    },
  );
  final responseJson = json.decode(response.body);

  return new Post.fromJson(responseJson);
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
