import 'package:flutter/material.dart';

class position extends StatefulWidget {
  const position({super.key});

  @override
  State<position> createState() => _positionState();
}

class _positionState extends State<position> {
  double t = 0;
  double r = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("position"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.white,
            width: 400,
            height: 400,
            padding: EdgeInsets.all(10),
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                    child: Center(
                      child: Container(
                        color: Colors.blue,
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Text(
                            "Flutterlogo",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(milliseconds: 200),
                top: t,
                  right: r,
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  r=150;
                });
              },
              child: Text("Click to show flutter logo"))
        ],
      ),
    );
  }
}
