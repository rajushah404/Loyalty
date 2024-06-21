import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/company_overview.dart';
import 'package:loyalty_system/03_application/page/services/widgets/feature_card.dart';
import 'package:loyalty_system/screen_size.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF2A2E43).withOpacity(1),
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
                  fontSize: isLargeScreen(context) ? 27 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                cloudBased,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: isLargeScreen(context) ? 15 : 15),
              ),
              const SizedBox(height: 20),
              if (isLargeScreen(context))
                Flexible(
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 4,
                    children: featureList.map((feature) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: feature,
                      );
                    }).toList(),
                  ),
                ),
              if (isMobileScreen(context))
                CarouselSlider(
                  carouselController: _controller,
                  items: featureList.map((feature) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: feature,
                    );
                  }).toList(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 1.5,
                    initialPage: 2,
                  ),
                ),
              if (isMobileScreen(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: featureList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: (AppColor.primary).withOpacity(
                                _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                )
            ],
          ),
        ),
      ),
    );
  }

  final List<FeatureCard> featureList = const [
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
  ];
}
