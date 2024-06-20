import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';

import '../../../../screen_size.dart';

class HomeInfoPage extends StatefulWidget {
  const HomeInfoPage({super.key});

  @override
  State<HomeInfoPage> createState() => _HomeInfoPageState();
}

class _HomeInfoPageState extends State<HomeInfoPage> {
  @override
  Widget build(BuildContext context) {
    final headlineStyle = TextStyle(
        fontSize: isLargeScreen(context) ? 50 : 25,
        color: Colors.white,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
        wordSpacing: 5);

    final subHeadlineStyle = TextStyle(
        fontSize: isLargeScreen(context) ? 20 : 14,
        color: AppColor.attentionText,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        wordSpacing: 2);

    final slideTextStyle = TextStyle(
        fontSize: isLargeScreen(context) ? 20 : 14,
        color: AppColor.whiteText,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
        wordSpacing: 2);

    return Row(
      mainAxisAlignment: isLargeScreen(context)
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Boost your \nbusiness with \nour Platform',
              style: headlineStyle,
            ),
            const SizedBox(height: 15),
            Text(
              'Fly your business to new height',
              style: subHeadlineStyle,
            ),
            const SizedBox(height: 10),
            Text(
              '(Space for Slides)',
              style: slideTextStyle,
            ),
            const SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 18,
                ),
              ),
              child: const Text(
                'BOOK A DEMO',
                style: TextStyle(
                    color: Colors.white,
                    wordSpacing: 2,
                    letterSpacing: 1.5,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        if (isLargeScreen(context))
          Flexible(
            child: Image.asset(
              "assets/images/bg1.png",
            ),
          )
      ],
    );
  }
}
