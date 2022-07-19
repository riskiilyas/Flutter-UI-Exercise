import 'package:flutter/material.dart';

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BMICalculatorPage()
    );
  }
}


class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({Key? key}) : super(key: key);

  @override
  _BMICalculatorPageState createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator"
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Riski'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(
          Icons.add
        ),
      ),
    );
  }
}
