import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';

import '../../../screen_size.dart';
import '../../core/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColor.lightBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: isMobileScreen(context) ? 40 : 100,
          horizontal: isMobileScreen(context) ? 15 : 100,
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.whiteText,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/test.png",
                        scale: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Welcome back!",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.5),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Center(
                      child: Text(
                        "Please enter your login details",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LayoutBuilder(
                      builder: (context, size) {
                        double width = MediaQuery.of(context).size.width;
                        return Center(
                          child: SizedBox(
                            width: isLargeScreen(context)
                                ? size.maxWidth * 0.50
                                : size.maxWidth * 0.95,
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                              shadowColor: Colors.black,
                              elevation: 5,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: isLargeScreen(context)
                                      ? width * 0.10
                                      : 20,
                                  vertical: 30,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "Username",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    CustomTextFormField(
                                      lableText: '',
                                      controller: usernameController,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          'Password',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    CustomTextFormField(
                                        lableText: '',
                                        controller: passwordController),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: AppColor.lightText,
                                        backgroundColor: AppColor.darkText,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15),
                                        minimumSize: const Size(300, 50),
                                      ),
                                      child: const Text(
                                        'Sign In',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Forgot Password ?",
                                        style: TextStyle(
                                            color: AppColor.appbar,
                                            fontSize: 16,
                                            letterSpacing: 1.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Divider(),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Flexible(
                                            child:
                                                Text("Don't have account ?")),
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 1.5,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Text(
                                      '© 2024 Loyalty System',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Privacy & Policy',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              letterSpacing: 1.5,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
