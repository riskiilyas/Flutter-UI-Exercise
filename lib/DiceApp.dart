import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[600],
        appBar: AppBar(
          title: Center(child: Text('Dice App')),
          backgroundColor: Colors.red[600],
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: TextButton(
                    child: Image.asset('images/dices/dice$leftDiceNumber.png'),
                    onPressed: () {
                      setState(() {
                        randomizeDices();
                      });
                    },
                  )
              ),
              Expanded(
                  child: TextButton(
                    child: Image.asset('images/dices/dice$rightDiceNumber.png'),
                    onPressed: () {
                      setState(() {
                        randomizeDices();
                      });
                    },
                  )
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '${leftDiceNumber+rightDiceNumber} Moves',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 48
            ),
          )
        ],
      ),
    );
  }

  void randomizeDices() {
    rightDiceNumber = Random().nextInt(6)+1;
    leftDiceNumber = Random().nextInt(6)+1;
  }
}
