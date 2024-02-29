import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
            'Magic Balls',
        style: TextStyle(
          fontFamily: 'Courgette',
          fontSize: 34,
        ),),
        centerTitle: true,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  const Ball({super.key});

  @override
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

