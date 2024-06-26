import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/page/landing_page/home_page.dart';
import 'package:loyalty_system/03_application/page/login_page/login_page.dart';
import 'package:loyalty_system/03_application/page/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loyalty System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:

          //const LoginPage(),
          const MainScreen(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => const HomePage(),
        '/signIn': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
