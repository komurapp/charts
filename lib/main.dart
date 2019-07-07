import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChartPage(),
    ),
  );
}

class ChartPage extends StatefulWidget {
  @override
  ChartPageState createState() => ChartPageState();
}

class ChartPageState extends State<ChartPage> {
  final random = Random();
  int dataSet = 50;

  void changeData() {
    setState(() {
      dataSet = random.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Data set: $dataSet"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: changeData,
      ),
    );
  }
}
