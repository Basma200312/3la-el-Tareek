import 'package:flutter/material.dart';
import 'package:omt_project/core/app_assets.dart';
import 'package:omt_project/core/app_font_style.dart';
import 'package:omt_project/features/settings/persentation/widgets/setting_option_widget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(AppAssets.background),
        fit: BoxFit.cover,

    ),),
     child:Padding(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: .5,
            shadowColor: Colors.black.withValues(alpha: 0.1),
            color: Colors.grey.shade200,
            child: ListTile(
              onTap: () {},
              leading: CircleAvatar(radius: 24, child: Text('BS')),
              title: Text('Basma Ragab', style: AppTextStyle.bodyText16),
              subtitle: Text('+20123456789'),
              trailing: CircleAvatar(
                radius: 16,
                child: Icon(Icons.edit, size: 18),
              ),
            ),
          ),
          SizedBox(height: 16),
          Text('Settings', style: TextStyle(fontSize: 24)),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey.shade200,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SettingOption(
                  onTap: () {},
                  title: 'Change Language',
                  leading: Icons.translate_outlined,
                ),
                SettingOption(
                  onTap: () {},
                  title: 'Privacy Policy',
                  leading: Icons.password_outlined,
                ),
                SettingOption(
                  onTap: () {},
                  title: 'Terms & Conditions',
                  leading: Icons.translate_outlined,
                ),
                SettingOption(
                  onTap: () {},
                  title: 'FAQs',
                  leading: Icons.format_quote,
                ),
                SettingOption(
                  onTap: () {},
                  title: 'Logout',
                  leading: Icons.logout,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
