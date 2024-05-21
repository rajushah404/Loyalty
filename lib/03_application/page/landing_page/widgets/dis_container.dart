import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';

class Discription extends StatelessWidget {
  const Discription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColor.appbar),
      height: MediaQuery.of(context).size.width * 0.25,
      // child: ,
    );
  }
}
