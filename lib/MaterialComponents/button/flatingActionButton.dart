import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('float action button'),
      ),
      body: Center(
        child: const Text('press the button below!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class FloatingActionButtonScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button Label'),
      ),
      body: Center(
        child: Text('press the button with a label'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {},
        label: Text('Approve'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
