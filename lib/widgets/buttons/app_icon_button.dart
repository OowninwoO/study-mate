import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Color? bgColor;
  final Color? fgColor;
  final Widget icon;
  final VoidCallback? onPressed;

  const AppIconButton({
    super.key,
    this.bgColor,
    this.fgColor,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: IconButton.styleFrom(
        backgroundColor: bgColor ?? Colors.white,
        foregroundColor: fgColor ?? Colors.black,
        disabledBackgroundColor: bgColor ?? Colors.white,
        disabledForegroundColor: fgColor ?? Colors.black,
        padding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: icon,
      onPressed: onPressed,
    );
  }
}
