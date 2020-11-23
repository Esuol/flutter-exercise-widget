import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class StatefulContainer extends StatefulWidget {
  StatefulContainer({Key key}) : super(key: key);
  @override
  _StatefulContainerState createState() => _StatefulContainerState();
}

class _StatefulContainerState extends State<StatefulContainer> {
  final Color color = RandomColor().randomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Widget> widgets = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(key: UniqueKey()),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(key: UniqueKey()),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchWiddget,
        child: Icon(Icons.undo),
      ),
    );
  }

  void switchWiddget() {
    widgets.insert(0, widgets.removeAt(1));
    setState(() {});
  }
}
