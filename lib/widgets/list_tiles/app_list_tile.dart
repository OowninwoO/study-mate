import 'package:flutter/material.dart';
import 'package:study_mate/theme/app_colors.dart';

class AppListTile extends StatelessWidget {
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final BorderSide? borderSide;
  final Widget? leading;
  final String title;
  final TextStyle? titleTextStyle;
  final String? subtitle;
  final TextStyle? subtitleTextStyle;
  final Widget? subtitleWidget;
  final Widget? trailing;
  final VoidCallback? onTap;

  const AppListTile({
    super.key,
    this.color,
    this.borderRadius,
    this.borderSide,
    this.leading,
    required this.title,
    this.titleTextStyle,
    this.subtitle,
    this.subtitleTextStyle,
    this.subtitleWidget,
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
        side: borderSide ?? const BorderSide(color: AppColors.divider),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        leading: leading,
        title: Text(title),
        titleTextStyle: titleTextStyle,
        subtitle: subtitle != null ? Text(subtitle!) : subtitleWidget,
        subtitleTextStyle: subtitleTextStyle,
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
