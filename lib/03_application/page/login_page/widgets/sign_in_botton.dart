import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

class SignInBotton extends StatelessWidget {
  const SignInBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColor.lightText,
        backgroundColor: AppColor.darkText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        minimumSize: const Size(300, 50),
      ),
      child: const Text(
        'Sign In',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
