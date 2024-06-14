import 'package:flutter/material.dart';
import 'package:loyalty_system/screen_size.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isLargeScreen(context)
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 25,
        ),
        Container(
          width: 4,
          height: 55,
          color: Colors.black,
          margin: const EdgeInsets.only(right: 1),
        ),
        Image.asset(
          "assets/images/test.png",
          color: Colors.white,
          scale: 2,
        ),
      ],
    );
  }
}
