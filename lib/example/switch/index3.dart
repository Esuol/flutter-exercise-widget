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

// 为了提升性能 Flutter 的比较算法（diff）是有范围的，它并不是对第一个 StatefulWidget 进行比较，而是对某一个层级的 Widget 进行比较。

// 所以为了解决这个问题，我们需要将 key 放到 Row 的 children 这一层级。
class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Widget> widgets = [
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatefulContainer(),
    ),
    Padding(
      key: UniqueKey(),
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
