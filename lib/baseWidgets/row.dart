import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(bottom: 8.0),
          child: new Row(
            children: <Widget>[
              Expanded(
                child: Text('Deliver features faster', textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: const FlutterLogo(),
                ),
              ),
            ],
          ),
        ),
        new Container(
          margin: EdgeInsets.only(bottom: 8),
          child: new Row(
            children: <Widget>[
              const FlutterLogo(),
              const Expanded(
                child: Text(
                    "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              ),
              const Icon(Icons.sentiment_very_satisfied)
            ],
          ),
        ),
        new Container(
          margin: EdgeInsets.only(bottom: 8),
          child: new Row(
            textDirection: TextDirection.rtl,
            children: <Widget>[
              const FlutterLogo(),
              const Expanded(
                child: Text(
                    "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
              ),
              const Icon(Icons.sentiment_very_satisfied),
            ],
          ),
        ),
      ],
    );
  }
}
