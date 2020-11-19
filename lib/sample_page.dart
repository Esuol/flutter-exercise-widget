import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SamplePage extends StatelessWidget {
  const SamplePage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Line 1
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: new Text(
          "发布成功",
          style: new TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          icon: new Image.asset("assets/images/nav_close.png"),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
      ),

      // Line -2
      body: new SamplePageContent(),
    );
  }
}

class SamplePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 42.0),
      child: new Column(
        children: <Widget>[
          // Line 2
          new Row(
            children: <Widget>[
              new Container(
                  width: 52.0,
                  height: 52.0,
                  margin: const EdgeInsets.only(left: 16.0),
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage('assets/images/avatar2.png'),
                  )),
              new Container(
                margin: const EdgeInsets.only(left: 7.0, right: 15.0),
                height: 48.0,
                child: new Stack(
                  children: <Widget>[
                    new Image.asset('assets/images/publish_chat_box.png'),
                    new Positioned(
                      left: 25.0,
                      top: 14.0,
                      child: new Text(
                        "张老师发布了一个任务，请查收",
                        style: new TextStyle(fontSize: 14.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Line 3
          new Container(
            margin: const EdgeInsets.fromLTRB(6.0, 24.0, 6.0, 30.0),
            child: new RoundInnerSquareBox(
              child: new Container(
                padding: const EdgeInsets.fromLTRB(24.0, 28.0, 24.0, 12.0),
                width: double.infinity,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      "unit 1 lesson e about animal",
                      style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Round",
                        color: Colors.white
                      )
                    ),

                    new Container(
                      margin: const EdgeInsets.only(top: 5.0, bottom: 13.0),
                      child: new Image.asset('assets/images/publish_work_line.png'),
                    ),

                    new Wrap(

                    )
                  ],
                ),
              )
            ),
          ),

          // Line 4
        ],
      ),
    );
  }
}

class RoundInnerSquareBox extends StatelessWidget {
  static const double gap = 12.0;

  RoundInnerSquareBox({
    @required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new ClipRRect(
      borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
      child: new Container(
        color: const Color(0xFFF0D5A9),
        padding: const EdgeInsets.all(gap),
        child: new Container(
          child: new Container(
            color:  const Color(0xFF3C594E),
            child: child,
          )
        )
      ),
    );
  }
}
