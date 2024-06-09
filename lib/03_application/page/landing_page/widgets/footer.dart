import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';
import 'package:loyalty_system/screen_size.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;

    return Container(
      height: heigth,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      color: AppColor.primary,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (isLargeScreen(context)) {
            // Desktop layout
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FooterColumn(
                      title: "Loyalty System",
                      items: [
                        "Loyalty System App",
                        "Pricing",
                        "Stamp Enterprise",
                        "Contact"
                      ],
                    ),
                    FooterColumn(
                      title: "Resources",
                      items: [
                        "Webinar Demo",
                        "Case Studies",
                        "Help Center",
                        "Ebooks & Guides",
                        "Blog"
                      ],
                    ),
                    FooterColumn(
                      title: "Top Industries",
                      items: [
                        "Cafes & Restaurants",
                        "Beauty Salons",
                        "Retail",
                        "Community & Tourism"
                      ],
                    ),
                    FooterColumn(
                      title: "Socials",
                      items: ["Facebook", "Twitter", "Linkedin"],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Loyalty System',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '© 2024 Stamp Loyalty Solutions',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FooterLink(text: 'Privacy Policy'),
                          FooterLink(text: 'User Terms'),
                          FooterLink(text: 'Merchant Terms'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            // Mobile layout
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterColumn(
                  title: "Loyalty System",
                  items: [
                    "Loyalty System App",
                    "Pricing",
                    "Stamp Enterprise",
                    "Contact"
                  ],
                ),
                SizedBox(height: 20),
                FooterColumn(
                  title: "Resources",
                  items: [
                    "Webinar Demo",
                    "Case Studies",
                    "Help Center",
                    "Ebooks & Guides",
                    "Blog"
                  ],
                ),
                SizedBox(height: 20),
                FooterColumn(
                  title: "Top Industries",
                  items: [
                    "Cafes & Restaurants",
                    "Beauty Salons",
                    "Retail",
                    "Community & Tourism"
                  ],
                ),
                SizedBox(height: 20),
                FooterColumn(
                  title: "Socials",
                  items: ["Facebook", "Twitter", "Linkedin"],
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Loyalty System',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '© 2024 Stamp Loyalty Solutions',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FooterLink(text: 'Privacy Policy'),
                          FooterLink(text: 'User Terms'),
                          FooterLink(text: 'Merchant Terms'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterColumn({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 10),
        if (MediaQuery.of(context).size.width > 600)
          Column(
            children: [
              for (var item in items)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          )
        else
          Column(
            children: [
              for (int i = 0; i < items.length; i += 2)
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          items[i],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    if (i + 1 < items.length)
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            items[i + 1],
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
            ],
          ),
      ],
    );
  }
}

class FooterLink extends StatelessWidget {
  final String text;

  const FooterLink({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
