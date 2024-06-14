import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/drawer_widget.dart';
import 'package:loyalty_system/03_application/page/landing_page/widgets/top_menu.dart';
import '../../../screen_size.dart';
import 'widgets/brand_logo.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
      drawer: isMobileScreen(context) ? const DrawerWidger() : null,
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0),
                  ],
                  stops: const [0.5, 0.5],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  tileMode: TileMode.repeated,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: isMobileScreen(context)
                ? MainAxisAlignment.start
                : MainAxisAlignment.start,
            children: [
              if (isLargeScreen(context)) ...[const TopMenuSection()],
              const SizedBox(
                height: 20,
              ),
              const BrandLogo(),
              if (isLargeScreen(context)) ...[const Spacer()],
              if (isMobileScreen(context)) ...[
                SizedBox(
                  height: height * 0.30,
                )
              ],
              Row(
                mainAxisAlignment: isLargeScreen(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: isMobileScreen(context) ? 0 : 50,
                        bottom: isMobileScreen(context) ? 0 : 150),
                    child: Column(
                      crossAxisAlignment: isLargeScreen(context)
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Power Your Business with\n(BRAND NAME)',
                          style: TextStyle(
                            fontSize: isLargeScreen(context) ? 50 : 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Your partner in business',
                          style: TextStyle(
                              fontSize: isLargeScreen(context) ? 20 : 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 18,
                            ),
                          ),
                          child: const Text(
                            'LEARN MORE',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
