import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/home_page/widgets/brand_logo.dart';
import 'package:loyalty_system/03_application/page/home_page/widgets/drawer_widget.dart';
import 'package:loyalty_system/03_application/page/home_page/widgets/home_info_page.dart';
import 'package:loyalty_system/03_application/page/home_page/widgets/top_menu.dart';
import '../../../screen_size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isMobileScreen(context)
          ? AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: const Color.fromARGB(255, 72, 111, 230),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              ],
            )
          : null,
      key: _scaffoldKey,
      endDrawer: isMobileScreen(context) ? const DrawerWidger() : null,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF3366FF),
                  Color.fromARGB(255, 72, 111, 230),
                  Color(0xFFFF66CC),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          if (isLargeScreen(context))
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopMenuSection(),
                  SizedBox(height: 35),
                  HomeInfoPage(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          if (isMobileScreen(context)) ...[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BrandLogo(),
                  const HomeInfoPage(),
                  Flexible(
                    child: Image.asset(
                      "assets/images/bg1.png",
                    ),
                  )
                ],
              ),
            )
          ]
        ],
      ),
    );
  }
}
