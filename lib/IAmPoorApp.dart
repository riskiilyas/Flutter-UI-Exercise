import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IAmPoorApp extends StatelessWidget {
  const IAmPoorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: Icon(Icons.exposure_minus_1),
          onPressed: () {  },
        ),
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Center(
            child: Text(
              'I Am Poor :(',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.yellow[50],
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/poor.jpg'),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      'When You \$6.9 :(',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
