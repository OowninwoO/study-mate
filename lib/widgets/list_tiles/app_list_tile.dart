import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide? borderSide;
  final Widget? leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  const AppListTile({
    super.key,
    this.color,
    this.borderRadius,
    this.borderSide,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      elevation: 0,
      color: color ?? Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(24),
        side: borderSide ?? const BorderSide(color: Colors.grey),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        leading: leading,
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
