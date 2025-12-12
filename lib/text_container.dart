import 'package:flutter/material.dart';

// Original simple Text
class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(context) {
    return const Text(
      "hello World!",
      style: TextStyle(
        color: Colors.orange,
        fontSize: 50,
        fontFamily: 'Roboto',
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

// 1) Text inside a decorated Container with gradient + shadow
class DecoratedTextContainer extends StatelessWidget {
  const DecoratedTextContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(blurRadius: 8, color: Colors.black26, offset: Offset(0, 4)),
        ],
      ),
      child: const Center(
        child: Text(
          'Gradient Text Container',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 4,
                color: Colors.black38,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 2) RichText with different styles in a single line
class RichTextContainer extends StatelessWidget {
  const RichTextContainer({super.key});

  @override
  Widget build(context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Normal ', style: DefaultTextStyle.of(context).style),
          const TextSpan(
            text: 'Bold',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const TextSpan(text: ' + '),
          const TextSpan(
            text: 'Colored',
            style: TextStyle(color: Colors.teal),
          ),
        ],
      ),
    );
  }
}

// 3) SelectableText for copyable content
class SelectableTextContainer extends StatelessWidget {
  const SelectableTextContainer({super.key});

  @override
  Widget build(context) {
    return const SelectableText(
      'This text is selectable. Long press to copy.',
      style: TextStyle(fontSize: 18),
    );
  }
}

// 4) Text demonstrating overflow, ellipsis and maxLines
class OverflowTextContainer extends StatelessWidget {
  const OverflowTextContainer({super.key});

  @override
  Widget build(context) {
    return const SizedBox(
      width: 150,
      child: Text(
        'This is a very long text that will be clipped and show an ellipsis at the end.',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}



// 6) Responsive text using FittedBox (scales to fit parent)
class ResponsiveTextContainer extends StatelessWidget {
  const ResponsiveTextContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      color: Colors.grey.shade200,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          'Responsive Text - scales to fit',
          style: TextStyle(fontSize: 48),
        ),
      ),
    );
  }
}

// 7) Using Theme text styles and merging
class ThemedTextContainer extends StatelessWidget {
  const ThemedTextContainer({super.key});

  @override
  Widget build(context) {
    final base = Theme.of(context).textTheme.titleLarge;
    return Text(
      'Using theme',
      style: base?.copyWith(color: Colors.green, letterSpacing: 1.2),
    );
  }
}
