import 'package:flutter/material.dart';

class CheckBoxStateScreen extends StatefulWidget {
  CheckBoxStateScreen({Key key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxStateScreen> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;
  bool _radioSelected = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            onChanged: (value) => {
              setState(() {
                _checkboxSelected = value;
              })
            },
          ),
          Radio(
            value: _radioSelected,
            groupValue: _radioSelected,
            // toggleable: true,
            onChanged: (value) => {
              setState(() {
                print('value $value');
                _radioSelected = value;
              })
            },
          )
        ],
      ),
    );
  }
}
