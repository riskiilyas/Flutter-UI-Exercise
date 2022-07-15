import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IAmRichApp extends StatelessWidget {
  const IAmRichApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("I am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
        image: AssetImage('images/diamond.png'),
        ),
      )
    )
  );}
}
