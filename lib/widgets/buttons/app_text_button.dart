import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final double? width;
  final Color? bgColor;
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWeight;
  final VoidCallback? onPressed;

  const AppTextButton({
    super.key,
    this.width,
    this.bgColor,
    required this.text,
    this.textColor,
    this.textSize,
    this.textWeight,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: bgColor ?? Colors.white,
          foregroundColor: textColor ?? Colors.black,
          disabledBackgroundColor: bgColor ?? Colors.white,
          disabledForegroundColor: textColor ?? Colors.black,
          textStyle: TextStyle(fontSize: textSize, fontWeight: textWeight),
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
