import 'package:flutter/material.dart';

class RouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

// 在_MyHomePageState.build方法中的Column的子widget中添加一个按钮（FlatButton） :

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text("open new route"),
        textColor: Colors.blue,
        onPressed: () {
          //导航到新路由
          Navigator.push( context,
           MaterialPageRoute(builder: (context) {
              return RouteScreen();
           }));
          },
      ),
    );
  }
}