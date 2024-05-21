import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/appbar_title.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: const Row(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
