import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/appbar_title.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/dis_container.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/drawer_widget.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/footer.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/menu_list_widget.dart';

import '../../../screen_size.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: AppColor.lightBackground,
          appBar: const CustomAppBar(),
          body: SingleChildScrollView(
            child: const Column(
              children: [MenuListWidget(), Discription(), FooterSection()],
            ),
          ),
          drawer: isMobileScreen(context) ? const DrawerWidger() : null,
        );
      },
    );
  }
}
