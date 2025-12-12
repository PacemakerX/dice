import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.white12, Colors.amber.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          child:  Center(
            child: Text(
              "hello World!",
              style: TextStyle(color: Colors.orange.shade500, fontSize: 50),
            ),
          ),
        ),
      ),
    ),
  );
}
