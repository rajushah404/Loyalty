import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/brand_logo.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/custom_text_button.dart';

class TopMenuSection extends StatelessWidget {
  const TopMenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BrandLogo(),
        Row(
          children: [
            CustomTextButton(
              enableHover: true,
              text: "Home",
              onPressed: () {},
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15),
            CustomTextButton(
              enableHover: true,
              text: "About Us",
              onPressed: () {},
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15),
            CustomTextButton(
              enableHover: true,
              text: "Services",
              onPressed: () {},
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15),
            CustomTextButton(
              enableHover: true,
              text: "Pricing",
              onPressed: () {},
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15),
            CustomTextButton(
              enableHover: true,
              text: "Testimonials",
              onPressed: () {},
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
