import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        new Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 48.0,
          height: 48.0,
        ),
        new Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
          ),
          margin: EdgeInsets.only(bottom: 8.0),
          padding: const EdgeInsets.all(8.0),
          color: Colors.blue[600],
          alignment: Alignment.center,
          child: Text('Hello world', style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white)),
          transform: Matrix4.rotationZ(0.1),
        )
      ],
    );
  }
}
