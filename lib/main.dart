import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPane(),
    ),
  );
}

class BallPane extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: false,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            print('I got clicked!');
            setState(() {
              ballNumber = changeBallFace();
              print(ballNumber);
            });
          },
        ),
      ),
    );
  }

  int changeBallFace() {
    return Random().nextInt(5) + 1;
  }
}
