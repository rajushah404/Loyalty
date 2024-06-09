import 'package:flutter/material.dart';

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}

bool isMobileScreen(BuildContext context) {
  return MediaQuery.of(context).size.width <= 600;
}
