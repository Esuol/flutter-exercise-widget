import 'package:flutter/material.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class TootipScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleTooltip(
      tooltipTap: () {
        print("Tooltip tap");
      },
      animationDuration: Duration(seconds: 3),
      show: true,
      tooltipDirection: TooltipDirection.up,
      child: Container(
        width: 200,
        height: 120,
        child: Placeholder(),
      ),
      content: Text(
        "Some text example!!!!",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class TooltipScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('tool tips demo')),
        body: Center(
          child: Tooltip(
            message: "Don't touch 不要碰 ",
            child: Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          ),
        ));
  }
}
