import 'package:flutter/material.dart';

class AboutUsText extends StatelessWidget {
  final String text;
  final Color? color;
  const AboutUsText({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 13,
          letterSpacing: 1.5,
          wordSpacing: 2,
        ),
      ),
    );
  }
}
