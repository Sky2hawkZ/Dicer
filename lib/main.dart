import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    int diceNumber1 = 1;
    int diceNumber2 = 4;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.all(8),
              child: Image.asset('images/dice$diceNumber1.png'),
              onPressed: () => print('left button press'),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.all(8),
              child: Image.asset('images/dice$diceNumber2.png'),
              onPressed: () => print('right button press'),
            ),
          ),
        ],
      ),
    );
  }
}
