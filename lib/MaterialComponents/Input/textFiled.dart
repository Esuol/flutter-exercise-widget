import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          obscureText: true,
          decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'password'),
        )
      ],
    );
  }
}
