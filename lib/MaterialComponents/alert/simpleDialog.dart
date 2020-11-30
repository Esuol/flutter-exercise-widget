import 'dart:js';

import 'package:flutter/material.dart';

class SimpleDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simple dialog'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _MySimpleDialog(context);
          },
          child: Text(
            'simple dialog',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        ),
      ),
    );
  }

  void _MySimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(
            'this is simple dialog title',
            style: TextStyle(fontSize:  20.0, fontWeight: FontWeight.bold)),
            children: <Widget>[
              _contentWidget(context, 'options1'),
              _contentWidget(context, 'options2'),
              _contentWidget(context, 'options3'),
              _contentWidget(context, 'options4'),
            ],
        );
      },
    );
  }
}
