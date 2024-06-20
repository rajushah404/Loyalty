import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/company_overview.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/feature_card.dart';
import 'package:loyalty_system/screen_size.dart';

class CloudInfo extends StatelessWidget {
  const CloudInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
          child: Column(
            crossAxisAlignment: isLargeScreen(context)
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              Text(
                'Cloud Based Digital Punch Card Loyalty System',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: isLargeScreen(context) ? 24 : 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                cloudBased,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: isLargeScreen(context) ? 15 : 8),
              ),
              const SizedBox(height: 20),
              Flexible(
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: isLargeScreen(context) ? 4 : 2,
                  children: const [
                    FeatureCard(
                      icon: Icons.check_circle,
                      title: 'MODERN, EASY & STREAMLINED',
                      description:
                          'Replaces paper based punch card with cloud based software with increased business efficiency. Customize reward for the customer redemption.',
                    ),
                    FeatureCard(
                      icon: Icons.analytics,
                      title: 'INTEGRATED CRM & ANALYTICS',
                      description:
                          'Seamlessly creates the CRM and provides analytics. Maintain customer profile and make best use of it.',
                    ),
                    FeatureCard(
                      icon: Icons.email,
                      title: 'SMS & EMAIL MARKETING',
                      description:
                          'Send targeted promotions, exclusive offers, and appointment reminders directly to their customers.',
                    ),
                    FeatureCard(
                      icon: Icons.person_add,
                      title: 'INCREASE CUSTOMER RETENTION',
                      description:
                          'Ease to customers with worry free digital punch saved on cloud. Increases the customer retention through better and modern loyalty system.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
