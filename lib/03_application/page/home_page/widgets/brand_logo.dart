import 'package:flutter/material.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Image.asset(
        "assets/images/suga-logo.png",
        color: Colors.white,
      ),
    );
  }
}
