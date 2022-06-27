import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color.fromARGB(255, 121, 233, 41),
          Color.fromARGB(255, 127, 201, 53),
          Color.fromARGB(255, 127, 201, 53),
          Color.fromARGB(255, 107, 92, 92),
          Colors.black
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds),
      child: Text(text, style: style),
    );
  }
}
