import 'package:flutter/material.dart';
import 'package:my_app_2/example/shop/shopList.dart';
import 'package:my_app_2/example/shop/shopItem.dart';
import 'package:my_app_2/sample_page.dart';
import 'package:my_app_2/counter_1.dart';
// import 'package:my_app_2/example/switch/index.dart';
// import 'package:my_app_2/example/switch/index2.dart';
import 'package:my_app_2/example/switch/index3.dart';
import 'package:my_app_2/baseWidgets/container.dart';
import 'package:my_app_2/baseWidgets/column.dart';
import 'package:my_app_2/baseWidgets/image.dart';
import 'package:my_app_2/baseWidgets/text.dart';

void main() => runApp(new MyApp());

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('组件库练习')),
        body: new Center(
          child: new TextScreen(name: '小明'),
        ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'flutter demo',
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        home: new MyHomePage(title: 'flutter demo home page'));
  }
}

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ShoppingList(
      products: <Product>[new Product(name: 'Eggs'), new Product(name: 'Flowers'), new Product(name: 'dogs')],
    );
  }
}

class SwitchPagg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Screen();
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => (new SamplePage()),
                  ),
                );
              },
              child: new Text(
                "点击我跳转到Sample页面",
                style: new TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => (new Counter()),
                    ));
              },
              child: new Text('跳转counter页面'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => (new ShopPage()),
                    ));
              },
              child: new Text('跳转ShopList页面'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => (new SwitchPagg()),
                    ));
              },
              child: new Text('跳转sWitch页面'),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => (new CustomPage()),
                    ));
              },
              child: new Text('跳转base组件练习页面'),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
