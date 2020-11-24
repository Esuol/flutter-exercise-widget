import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tabbar'),
        bottom: TabBar(tabs: [
          Tab(text: 'Cat'),
          Tab(text: 'Dog'),
          Tab(text: 'Rabbit'),
        ]),
      ),
      body: TabBarView(
        children: <Widget>[
          Center(
            child: Text(
              'Cat',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'Dog',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'Rabbit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
