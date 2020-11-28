import 'package:flutter/material.dart';

class FlatButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () => {},
            child: Text('Flat Button'),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: const EdgeInsets.all(8.0),
            splashColor: Colors.blueAccent,
            onPressed: () => {print('Flat button color')},
            child: Text('Flat Button color', style: TextStyle(fontSize: 20.0)),
          )
        ],
      ),
    );
  }
}
