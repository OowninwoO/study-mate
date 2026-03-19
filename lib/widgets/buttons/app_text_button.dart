import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final double? width;
  final Color? bgColor;
  final Color? fgColor;
  final String text;
  final VoidCallback? onPressed;

  const AppTextButton({
    super.key,
    this.width,
    this.bgColor,
    this.fgColor,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: bgColor ?? Colors.white,
          foregroundColor: fgColor ?? Colors.black,
          disabledBackgroundColor: bgColor ?? Colors.white,
          disabledForegroundColor: fgColor ?? Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
