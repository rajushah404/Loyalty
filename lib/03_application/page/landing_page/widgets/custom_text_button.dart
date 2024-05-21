import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final Icon? icon;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.buttonColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: textStyle ?? const TextStyle(color: AppColor.darkText),
          ),
          if (icon != null) ...[
            const SizedBox(width: 5),
            icon!,
          ]
        ],
      ),
    );
  }
}
