import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          obscureText: true,
          decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'password'),
        ),
      ],
    );
  }
}

class TextFieldStateScreen extends StatefulWidget {
  TextFieldStateScreen({Key key}) : super(key: key);

  @override
  _TextState createState() => _TextState();
}

class _TextState extends State<TextFieldStateScreen> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: _controller,
          onSubmitted: (String value) async {
            await showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('thanks!'),
                  content: Text('you typed "$value". '),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () => {Navigator.pop(context)},
                      child: Text('ok'),
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
