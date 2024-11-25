import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceValue1 = 1;
  int diceValue2 = 1;

  // List of images for each dice face
  final List<String> diceImages = [
    'images/dice1.png', // Image for 1
    'images/dice2.png', // Image for 2
    'images/dice3.png', // Image for 3
    'images/dice4.png', // Image for 4
    'images/dice5.png', // Image for 5
    'images/dice6.png', // Image for 6
  ];

  void rollDice() {
    setState(() {
      // Generate random numbers between 1 and 6 for each die
      diceValue1 = Random().nextInt(6) + 1;
      diceValue2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice Game'),
        titleTextStyle: TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the dice images
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(diceImages[diceValue1 - 1],
                    width: 100, height: 100),
                SizedBox(width: 20),
                Image.asset(diceImages[diceValue2 - 1],
                    width: 100, height: 100),
              ],
            ),
            SizedBox(height: 40),
            // Roll button
            ElevatedButton(
              onPressed: rollDice,
              child: Text('Roll Dice'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                // backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
