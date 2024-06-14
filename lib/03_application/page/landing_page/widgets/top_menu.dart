import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/custom_text_button.dart';

class TopMenuSection extends StatelessWidget {
  const TopMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 80),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                enableHover: true,
                text: "About Us",
                onPressed: () {},
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.3),
              ),
              const SizedBox(width: 20),
              CustomTextButton(
                enableHover: true,
                text: "Pricing",
                onPressed: () {},
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.3),
              ),
              const SizedBox(width: 20),
              CustomTextButton(
                enableHover: true,
                text: "Demo",
                onPressed: () {},
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.3),
              ),
              const SizedBox(width: 20),
              CustomTextButton(
                enableHover: true,
                text: "Contact Us",
                onPressed: () {},
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
