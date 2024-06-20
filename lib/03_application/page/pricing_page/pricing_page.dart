import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/text_widget.dart';
import 'package:loyalty_system/03_application/page/pricing_page/widget/pricing_card.dart';

import '../../../screen_size.dart';

class PricingPage extends StatefulWidget {
  const PricingPage({super.key});

  @override
  State<PricingPage> createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pricings',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColor.primary),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AboutUsText(
                  text:
                      'Start for free!! Offering tiers to accommodate every business size',
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            if (isLargeScreen(context))
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pricingList,
                    ),
                  ],
                ),
              ),
            if (isMobileScreen(context))
              CarouselSlider(
                carouselController: _controller,
                items: pricingList.map((feature) {
                  return Builder(
                    builder: (BuildContext context) {
                      return feature;
                    },
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
                  viewportFraction: 1.5,
                  aspectRatio: 1,
                  initialPage: 2,
                ),
              ),
            if (isMobileScreen(context))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pricingList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (AppColor.primary)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              )
          ],
        ),
      ),
    );
  }

  final List<PricingCard> pricingList = const [
    PricingCard(
      title: 'FREE',
      customerRange: 'Up to 100 Customers',
      price: '\$0',
      smsPackages: [
        '100 pack - \$10',
        '500 pack - \$20',
        '1000 pack - \$30',
        '2000 pack - \$40',
      ],
      monthly: false,
    ),
    PricingCard(
      title: 'TIER-2',
      customerRange: 'Up to 100-1200 Customers',
      price: '\$15 / MONTH',
      smsPackages: [
        '100 pack - \$10',
        '500 pack - \$20',
        '1000 pack - \$30',
        '2000 pack - \$40',
      ],
      monthly: true,
    ),
    PricingCard(
      title: 'TIER-3',
      customerRange: 'Up to 1200-2500 Customers',
      price: '\$25 / MONTH',
      smsPackages: [
        '100 pack - \$10',
        '500 pack - \$20',
        '1000 pack - \$30',
        '2000 pack - \$40',
      ],
      monthly: true,
    ),
    PricingCard(
      title: 'TIER-4',
      customerRange: '2500-Unlimited Customers',
      price: '\$60 / MONTH\n\$599 / YEAR',
      smsPackages: [
        '100 pack - \$10',
        '500 pack - \$20',
        '1000 pack - \$30',
        '2000 pack - \$40',
      ],
      monthly: true,
    ),
  ];
}
