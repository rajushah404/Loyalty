import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final Icon icon;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.buttonColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      // style: ButtonStyle(
      //   backgroundColor: WidgetStateProperty.all<Color>(
      //     buttonColor ?? Theme.of(context).primaryColor,
      //   ),
      //   foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle ?? const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 5),
          icon,
        ],
      ),
    );
  }
}
