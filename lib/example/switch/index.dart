import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class StatelessContainer extends StatelessWidget {
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
  List<Widget> widgets = [StatelessContainer(), StatelessContainer()];

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
