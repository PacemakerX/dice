import 'package:flutter/material.dart';
import 'package:dice/text_container.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.deepPurple.shade800,
            Colors.indigo.shade600,
            Colors.amber.shade300,
          ],
          stops: [0.0, 0.75, 1.0],
          center: Alignment(0, 0),
          focal: Alignment(0.4, -0.65),
          focalRadius: 0.08,
          radius: 1,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(child: TextContainer("Hello guys this is my chanle")),
    );
  }
}
