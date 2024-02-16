import 'package:flutter/material.dart';

class Masteringg extends StatefulWidget {
  const Masteringg({super.key});

  @override
  State<Masteringg> createState() => _MasteringgState();
}

class _MasteringgState extends State<Masteringg>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween(begin: 50.0, end: 200).animate(_controller)
      ..addStatusListener((status) {})
      ..addListener(() {
        setState(() {

        });
      });
    _controller..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("Mastering ")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Expanded(
             flex: 6,
             child: Container(
               alignment: Alignment.center,
               child: Container(
                 margin: EdgeInsets.only(top: 50.0),
                 child: Transform.rotate(angle: -3.14/2*_animation.value,
                 child: Container(
                   color: Colors.red,
                   width: 100,
                   height: 100,
                 ),),
               ),

         ))
        ],
      ),
    );
  }
}
