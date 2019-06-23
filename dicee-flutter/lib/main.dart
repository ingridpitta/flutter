import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[200],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.cyan[200],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int currentDice = 1;
  int newDice = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded (
          child: FlatButton(
            child: Image.asset('images/dice$currentDice.png'),
            onPressed: () {
              setState(() {
                currentDice=Random().nextInt(6)+1;
                newDice=Random().nextInt(6)+1;
              });
            },
          ),
        ),
        Expanded (
          child: FlatButton (
            child: Image.asset('images/dice$newDice.png'),
            onPressed: () {
              setState(() {
                newDice=Random().nextInt(6)+1;
                currentDice=Random().nextInt(6)+1;
              });
            },
            ),
        ),
    ],
  );
}}

//