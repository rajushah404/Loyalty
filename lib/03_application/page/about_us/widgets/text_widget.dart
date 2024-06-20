import 'package:flutter/material.dart';
import 'package:loyalty_system/screen_size.dart';

class AboutUsText extends StatelessWidget {
  final String text;
  final Color? color;
  const AboutUsText({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: isLargeScreen(context) ? 18 : 13,
          letterSpacing: 1.5,
          wordSpacing: 2,
        ),
      ),
    );
  }
}
