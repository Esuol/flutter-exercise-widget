import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  SliderScreen({Key key}) : super(key: key);

  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<SliderScreen> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Slider(
        value: _currentSliderValue,
        min: 0,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) => {
          print('value $value'),
          setState(() {
            _currentSliderValue = value;
          })
        },
      ),
    );
  }
}
