import 'package:flutter/material.dart';
import 'package:loyalty_system/screen_size.dart';

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xFF2A2E43),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isLargeScreen(context) ? 18 : 5),
          side: const BorderSide(color: Color.fromARGB(96, 51, 49, 49)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon,
                  color: Colors.purple, size: isLargeScreen(context) ? 50 : 35),
              const SizedBox(height: 10),
              Flexible(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: isLargeScreen(context) ? 25 : 15,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Text(
                  description,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: isLargeScreen(context) ? 20 : 12),
                ),
              ),
            ],
          ),
        ));
  }
}
