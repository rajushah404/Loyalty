import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/about_us/about_us.dart';
import 'package:loyalty_system/03_application/page/about_us/widgets/cloud_info.dart';
import 'package:loyalty_system/03_application/page/landing_page/home_page.dart';
// import '../../../screen_size.dart';
// import '../landing_page/widgets/drawer_widget.dart';

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
      // appBar: isMobileScreen(context)
      //     ? AppBar(
      //         elevation: 0,
      //         automaticallyImplyLeading: false,
      //         backgroundColor: const Color.fromARGB(255, 72, 111, 230),
      //         actions: [
      //           IconButton(
      //             icon: const Icon(
      //               Icons.menu,
      //               color: Colors.black,
      //             ),
      //             onPressed: () {
      //               _scaffoldKey.currentState?.openEndDrawer();
      //             },
      //           ),
      //         ],
      //       )
      //     : null,
      // key: _scaffoldKey,
      // endDrawer: isMobileScreen(context) ? const DrawerWidger() : null,
      // backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            _buildHomeSection(),
            _buildAboutUsSection(),
            _buildCloudInfo()
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
    return const SizedBox(
      height: 800,
      child: CloudInfo(),
    );
  }
}
