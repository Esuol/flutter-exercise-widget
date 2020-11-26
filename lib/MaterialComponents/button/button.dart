import 'package:flutter/material.dart';

class CustomButtonScreen extends StatelessWidget {
  CustomButtonScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const RaisedButton(
            onPressed: null,
            child: Text('Disabled button', style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }
}
