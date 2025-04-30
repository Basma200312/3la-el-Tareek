import 'package:flutter/material.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';

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
      title: Text(title, style: AppTextStyle.bodyTextRegular16,),
      leading: Icon(leading),
      trailing: Icon(Icons.arrow_forward_ios, size: 15),
    );
  }
}
