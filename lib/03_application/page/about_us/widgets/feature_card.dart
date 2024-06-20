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
      elevation: 2,
      color: const Color.fromARGB(96, 51, 49, 49),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Color.fromARGB(96, 51, 49, 49)),
      ),
      child: Padding(
        padding: isLargeScreen(context)
            ? const EdgeInsets.all(16.0)
            : const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon,
                color: Colors.purple, size: isLargeScreen(context) ? 50 : 20),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: isLargeScreen(context) ? 25 : 8,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Text(
                description,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: isLargeScreen(context) ? 20 : 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
