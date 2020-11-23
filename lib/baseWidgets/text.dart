import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  TextScreen({this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          'hello $name! how are u',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text.rich(TextSpan(text: 'textspan', children: <TextSpan>[
          TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
        ]))
      ],
    );
  }
}
