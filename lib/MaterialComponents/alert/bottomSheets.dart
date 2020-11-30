import 'package:flutter/material.dart';

class BottomSheet1Page extends StatefulWidget {
  @override
  _BottomSheetPageState createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheet1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottom sheet'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(index.toString()),
            subtitle: Text('我是 $index 的副标题'),
          );
        },
        itemCount: 300,
      ),
      bottomSheet: Container(
        child: Row(
          children: <Widget>[
            Expanded(child: TextField()),
            RaisedButton(
              child: Text('发送'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
