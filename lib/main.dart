import 'package:flutter/material.dart';

void main() {
  runApp(
    new Center(
      child: new Text(
        'hello world',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Widget子类中的字段往往都会定义为"final"

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        // Row 是水平方向的线性布局（linear layout）
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'navigation menu',
            onPressed: null, // null 会禁用button
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // // Material 是UI呈现的“一张纸”
    return new Material(
      // Column is 垂直方向布局
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title
            ),
          ),
          new Expanded(
            child: new Center(
              child: new Text('hello, world'),
            ),
          ),
        ],
      ),
    );
  }
}
