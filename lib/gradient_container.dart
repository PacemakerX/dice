import 'package:dice/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:dice/text_container.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade800],
        ),
      ),

      child: Center(child: DiceRoller()),
    );
  }
}
