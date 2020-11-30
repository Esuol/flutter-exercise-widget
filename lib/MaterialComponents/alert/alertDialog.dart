import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            shoaAlertDialog(context);
          },
          child: Text(
            'AlertDialog',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          color: Colors.green,
        ),
      ),
    );
  }

  void shoaAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('this is alertDialog'),
          title: Center(
            child: Text(
              'title',
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('确定'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('取消'),
            )
          ],
        );
      },
    );
  }
}
