import 'package:flutter/material.dart';

class AppIconTextButton extends StatelessWidget {
  final double? width;
  final Color? bgColor;
  final Color? fgColor;
  final Widget icon;
  final String text;
  final VoidCallback? onPressed;

  const AppIconTextButton({
    super.key,
    this.width,
    this.bgColor,
    this.fgColor,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          backgroundColor: bgColor ?? const Color(0xFF111111),
          foregroundColor: fgColor ?? const Color(0xFFFFFFFF),
          disabledBackgroundColor: bgColor ?? const Color(0xFF111111),
          disabledForegroundColor: fgColor ?? const Color(0xFFFFFFFF),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: icon,
        label: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
