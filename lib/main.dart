import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: new BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
            'Magic Balls',
        style: TextStyle(
          fontFamily: 'Courgette',
          fontSize: 34,
        ),),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball>{
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
          setState(() {
            ballnumber = Random().nextInt(5)+1;
          });
        },
      child: Center(
        child: Image.asset("images/ball$ballnumber.png"),
      ),
    );
  }
}

