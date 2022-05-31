import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _anim = "spin1";
  String _img = "assets/AnimGears.riv";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if(_anim == "spin1") {
                _anim = "spin2";
              }else {
                _anim = "spin1";
              }
              _img = "assets/AnimGears.riv";
            });
            print(_anim);
          },
          child: Container(
            width: 150,
            height: 150,
            child: RiveAnimation.asset(
              _img,
              animations: [_anim],
              
            ),
          ),
        ),
      ),
    );
  }
}
