import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/company_overview.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/text_widget.dart';
import 'package:loyalty_system/screen_size.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Added to align children to the start
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              // Added Expanded to handle different screen sizes better
              child: Column(
                crossAxisAlignment: isLargeScreen(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Company Overview",
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColor.darkText,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AboutUsText(
                    text: companyOverview,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Company Philosophy and Vision",
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColor.darkText,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AboutUsText(
                    text: companyVision,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (isMobileScreen(context))
                    Image.asset(
                      "assets/images/bg2.png",
                    ),
                ],
              ),
            ),
            if (isLargeScreen(context))
              Flexible(
                child: Image.asset(
                  "assets/images/bg2.png",
                ),
              )
          ],
        ),
      ),
    );
  }
}
