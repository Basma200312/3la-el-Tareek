import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final String title;
  final IconData leading;
  final VoidCallback onTap;

  const SettingOption({
    super.key,
    required this.title,
    required this.leading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      leading: Icon(leading),
      trailing: Icon(Icons.arrow_forward_ios, size: 15),
    );
  }
}
