import 'package:flutter/material.dart';

class opacityscreen extends StatefulWidget {
  const opacityscreen({super.key});

  @override
  State<opacityscreen> createState() => _opacityscreenState();
}

class _opacityscreenState extends State<opacityscreen> {
  double op = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("opacity"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: op,
              child: Container(
                color: Colors.cyanAccent,
                width: 200,
                height: 200,
                padding: EdgeInsets.all(10),
                child:Center(child: Text("Flutterlogo",style: TextStyle(color: Colors.white),),)
                ),
              ),
            ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  op = 1;
                });
              },
              child: Text("Click to show flutter logo"))
        ],
      ),
    );
  }
}
