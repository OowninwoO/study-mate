import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  final Color? tileColor;
  final Widget? leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;

  const AppListTile({
    super.key,
    this.tileColor,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: tileColor,
      leading: leading,
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: trailing,
    );
  }
}
