import 'package:flutter/material.dart';
import 'package:loyalty_system/03_application/core/app_color.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? buttonColor;
  final bool enableHover;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.buttonColor,
    this.enableHover = false,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (widget.enableHover) {
          setState(() {
            _isHovered = true;
          });
        }
      },
      onExit: (_) {
        if (widget.enableHover) {
          setState(() {
            _isHovered = false;
          });
        }
      },
      child: TextButton(
        onPressed: widget.onPressed,
        child: Flexible(
          child: Text(
            widget.text,
            style: widget.textStyle?.copyWith(
                  decoration: _isHovered
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationThickness: _isHovered ? 3.0 : null,
                ) ??
                TextStyle(
                  color: AppColor.darkText,
                  decoration: _isHovered
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationThickness: _isHovered ? 2.0 : null,
                ),
          ),
        ),
      ),
    );
  }
}
