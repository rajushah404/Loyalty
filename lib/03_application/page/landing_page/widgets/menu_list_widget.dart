import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/custom_text_button.dart';

import '../../../../screen_size.dart';
import '../../../core/app_color.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      width: width,
      decoration: const BoxDecoration(
          color: AppColor.appbar,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/test.png",
                height: isLargeScreen(context) ? 50 : 50,
                width: isLargeScreen(context) ? 150 : 200,
              ),
              if (isLargeScreen(context)) ...[
                CustomTextButton(
                  text: 'Loyalty App',
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: AppColor.darkText,
                  ),
                ),
                const SizedBox(width: 8),
                CustomTextButton(
                  text: 'Test1',
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: AppColor.darkText,
                  ),
                ),
                const SizedBox(width: 8),
                CustomTextButton(
                  text: 'Test2',
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: AppColor.darkText,
                  ),
                ),
              ],
            ],
          ),
          if (isLargeScreen(context)) ...[
            Row(
              children: [
                CustomTextButton(
                  text: 'Merchant Login',
                  textStyle: const TextStyle(
                    fontSize: 16,
                    color: AppColor.darkText,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
