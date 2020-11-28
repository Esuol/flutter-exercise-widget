import 'package:flutter/material.dart';

class IconButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () => {},
          ),
          Text('Volume')
        ],
      ),
    );
  }
}
