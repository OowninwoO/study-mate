import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Color? bgColor;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final VoidCallback? onPressed;

  const AppIconButton({
    super.key,
    this.bgColor,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: IconButton.styleFrom(
        backgroundColor: bgColor ?? Colors.white,
        foregroundColor: iconColor ?? Colors.black,
        disabledBackgroundColor: bgColor ?? Colors.white,
        disabledForegroundColor: iconColor ?? Colors.black,
        iconSize: iconSize,
        padding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      icon: Icon(icon),
      onPressed: onPressed,
    );
  }
}
