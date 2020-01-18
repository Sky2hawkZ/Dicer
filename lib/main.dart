import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 1;
  int diceNumber2 = 4;

  void changeDiceFace() {
    setState(() {
      diceNumber2 = Random().nextInt(6) + 1;
      diceNumber1 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.all(8),
              onPressed: () {
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$diceNumber1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.all(8),
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$diceNumber2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
