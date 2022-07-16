import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Magic8BallApp extends StatelessWidget {
  const Magic8BallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Ask Me Anything!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
        ),
        body: Magic8BallPage(),
      ),
    );
  }
}

class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({Key? key}) : super(key: key);

  @override
  _Magic8BallPageState createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  var ballState = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: Center(
        child: TextButton(
          child: Image.asset('images/magic_8_ball/ball$ballState.png'),
          onPressed: () {
            setState(() {
              ballState = Random().nextInt(5)+1;
            });
          },
        ),
      ),
    );
  }
}

