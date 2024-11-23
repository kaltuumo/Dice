// import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 1;
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              print('Heloo in right');
            },
            child: Image.asset('images/dice2.png'),
          ),
        ),
        Expanded(
          child: TextButton(
              onPressed: () {
                print('Heloo in left');
              },
              child: Image.asset('images/dice2.png')),
        ),
      ],
    ));
  }
}
