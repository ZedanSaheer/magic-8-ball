import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 111, 167),
        title: Text(
          "Ask me anything?",
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  BallState createState() => BallState();
}

class BallState extends State<Ball> {
  int ballNumber = 1;

  void handlePress() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
    print("Pressed $ballNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: handlePress,
          child: Image.asset(
            'images/ball$ballNumber.png',
          )),
    );
  }
}
