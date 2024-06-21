import 'package:flutter/material.dart';

class DrawerWidger extends StatelessWidget {
  const DrawerWidger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double drawerLength = MediaQuery.of(context).size.width;
    return Drawer(
      width: drawerLength * 0.60,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      elevation: 1,
      child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF3366FF).withOpacity(1),
                const Color.fromARGB(255, 72, 111, 230).withOpacity(1),
                const Color(0xFFFF66CC).withOpacity(1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
              ),
              ListTile(
                leading: const Icon(Icons.home_max_outlined),
                title: const Text(
                  'About Us',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.price_check_outlined),
                title: const Text(
                  'Pricing',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.developer_mode),
                title: const Text(
                  'Demo',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                onTap: () {},
              ),
              const Divider(),
            ],
          )),
    );
  }
}
