import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/appbar_title.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/custom_text_button.dart';

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
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/test.png"),
                          CustomTextButton(
                            text: 'Loyalti App',
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
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
