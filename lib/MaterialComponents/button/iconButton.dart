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

class IconButtonStateScreen extends StatefulWidget {
  IconButtonStateScreen({Key key}) : super(key: key);

  @override
  _IconState createState() => _IconState();
}

class _IconState extends State<IconButtonStateScreen> {
  int _volume = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'increaset volume by 10',
          onPressed: () => {
            setState(() {
              _volume += 10;
            })
          },
        ),
        Text('Volume num : $_volume')
      ],
    );
  }
}
