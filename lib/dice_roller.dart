import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  // we don't add buld method
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    // build(context);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 300),
        SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.amber.withOpacity(0.2),
          ),
          onPressed: rollDice,
          child: Text('Roll Dice', style: TextStyle(color: Colors.amber)),
        ),
      ],
    );
  }
}
