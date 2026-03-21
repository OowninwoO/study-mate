import 'package:flutter/material.dart';

class AppIconTextButton extends StatelessWidget {
  final double? width;
  final Color? bgColor;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWeight;
  final VoidCallback? onPressed;

  const AppIconTextButton({
    super.key,
    this.width,
    this.bgColor,
    required this.icon,
    this.iconColor,
    this.iconSize,
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
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          backgroundColor: bgColor ?? Colors.white,
          foregroundColor: textColor ?? Colors.black,
          disabledBackgroundColor: bgColor ?? Colors.white,
          disabledForegroundColor: textColor ?? Colors.black,
          iconColor: iconColor ?? textColor ?? Colors.black,
          iconSize: iconSize,
          textStyle: TextStyle(fontSize: textSize, fontWeight: textWeight),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: Icon(icon),
        label: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
