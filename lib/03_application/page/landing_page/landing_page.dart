import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/appbar_title.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/custom_text_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appbar,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 80,
                  decoration: const BoxDecoration(
                      color: AppColor.warningColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/test.png"),
                          CustomTextButton(
                            text: 'Loyalti App',
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: AppColor.darkText,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CustomTextButton(
                            text: 'Test1',
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: AppColor.darkText,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CustomTextButton(
                            text: 'Test2',
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_drop_down_sharp,
                              color: AppColor.darkText,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomTextButton(
                            text: 'Merchent Login',
                            textStyle: const TextStyle(
                              fontSize: 16,
                              color: AppColor.darkText,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          // const Discription()
        ],
      ),
    );
  }
}
