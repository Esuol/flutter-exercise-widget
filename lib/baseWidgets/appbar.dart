import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  AppBarScreen({Key key}) : super(key: key);

  void openPage(BuildContext context) => {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('next page'),
            ),
            body: Center(
              child: Text('this is the next page', style: TextStyle(fontSize: 24)),
            ),
          );
        }))
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('app bar'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'show snackbar',
              onPressed: () => {
                // scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'next page',
              onPressed: () => {openPage(context)},
            )
          ],
        ),
        body: const Center(
          child: const Text('this is the home page', style: TextStyle(fontSize: 24.0)),
        ));
  }
}
