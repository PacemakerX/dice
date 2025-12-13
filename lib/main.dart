import 'package:flutter/material.dart';
import 'package:dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          bottomOpacity: 0.5,
        ),

        body: GradientContainer(),
      ),
    ),
  );
}
