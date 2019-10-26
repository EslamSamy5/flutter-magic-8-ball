import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            centerTitle: true,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballPage = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        onPressed: () {
          setState(() {
            ballPage = Random().nextInt(5) + 1;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/ball$ballPage.png'),
          ],
        ),
      ),
    );
  }
}

//
//class BallPage extends StatefulWidget {
//  @override
//  _BallPageState createState() => _BallPageState();
//}
//
//class _BallPageState extends State<BallPage> {
//  int ballNumber = 0;
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: FlatButton(
//        onPressed: () {
//          setState(() {
//            ballNumber = Random().nextInt(5) + 1;
//          });
//        },
//        child: Image.asset('images/ball$ballNumber.png'),
//      ),
//    );
//  }
//}
