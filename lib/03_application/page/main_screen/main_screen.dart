import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/about_us/about_us.dart';
import 'package:loyalty_system/03_application/page/services/service_page.dart';
import 'package:loyalty_system/03_application/page/home_page/home_page.dart';
import 'package:loyalty_system/03_application/page/pricing_page/pricing_page.dart';
import 'package:loyalty_system/screen_size.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _buildHomeSection(),
            _buildAboutUsSection(),
            _buildCloudInfo(),
            _buildPricingPage()
          ],
        ),
      ),
    );
  }

  Widget _buildHomeSection() {
    return const SizedBox(
      height: 900,
      child: HomePage(),
    );
  }

  Widget _buildAboutUsSection() {
    return const SizedBox(
      height: 800,
      child: AboutUsPage(),
    );
  }

  Widget _buildCloudInfo() {
    return SizedBox(
      height: isLargeScreen(context) ? 700 : 600,
      child: const ServicePage(),
    );
  }

  Widget _buildPricingPage() {
    return SizedBox(
      height: isLargeScreen(context) ? 800 : 650,
      child: const PricingPage(),
    );
  }
}
