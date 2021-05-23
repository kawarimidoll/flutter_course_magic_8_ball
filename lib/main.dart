import 'package:flutter/material.dart';

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
      body: Container(
        child: Text('this is container'),
      ),
    );
  }
}
