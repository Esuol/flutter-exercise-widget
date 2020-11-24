import 'package:flutter/material.dart';

class ScaffoldScreen2 extends StatefulWidget {
  ScaffoldScreen2({Key key}) : super(key: key);

  @override
  _ScaffoldState createState() => _ScaffoldState();
}

class _ScaffoldState extends State<ScaffoldScreen2> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample Code')),
      body: Center(
        child: Text('you have pressed the button $_count times'),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 40.0,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {setState(() => _count++)},
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
