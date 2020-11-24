import 'package:flutter/material.dart';

class ScaffoldScreen extends StatefulWidget {
  ScaffoldScreen({Key key}) : super(key: key);

  @override
  _scaffoldWidgetState createState() => _scaffoldWidgetState();
}

class _scaffoldWidgetState extends State<ScaffoldScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scaffold example')
      ),
      body: Center(
        child: Text('you have pressed the button $_count times'),
      ),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increent Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
