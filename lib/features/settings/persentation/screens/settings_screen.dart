import 'package:flutter/material.dart';
import 'package:ala_el_tareek/core/app_assets.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:ala_el_tareek/features/settings/persentation/screens/faqs.dart';
import 'package:ala_el_tareek/features/settings/persentation/screens/logout.dart';
import 'package:ala_el_tareek/features/settings/persentation/screens/privact.dart';
import 'package:ala_el_tareek/features/settings/persentation/screens/edit_profile.dart';
import 'package:ala_el_tareek/features/settings/persentation/screens/terms.dart';
import 'package:ala_el_tareek/features/settings/persentation/widgets/setting_option_widget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: .5,
              shadowColor: Colors.black.withValues(alpha: 0.1),
              color: AppColors.greyWithShade,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfile()),
                  );
                },
                leading: CircleAvatar(radius: 24, child: Text('BS', style: AppTextStyle.bodyTextMedium16,)),
                title: Text(
                  'Basma Ragab',
                  style: AppTextStyle.bodyTextRegular16.copyWith(
                    color: AppColors.mainColor,
                  ),
                ),
                subtitle: Text('+20123456789', style: AppTextStyle.bodyTextRegular14.copyWith(color: AppColors.grey ),),
                trailing: GestureDetector(
               onTap: () {
              Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const EditProfile()),
                );
                },
                 child: const CircleAvatar(
                  radius: 16,
                child: Icon(Icons.edit, size: 18),
                    ),
                   ),

                ),
              ),
            SizedBox(height: 16),
            Text('Settings', style: AppTextStyle.titleTextMedium24),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.greyWithShade,
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PrivactScreen(),
                        ),
                      );
                    },
                    title: 'Privacy Policy',
                    leading: Icons.password_outlined,
                  ),
                  SettingOption(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Terms(),
                        ),
                      );
                    },
                    title: 'Terms & Conditions',
                    leading: Icons.translate_outlined,
                  ),
                  SettingOption(
                    onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Faqs(),
                        ),
                      );},
                    title: 'FAQs',
                    leading: Icons.format_quote,
                  ),
                  SettingOption(
                    onTap: ()=> showLogutDialog(context),
                    title: 'Logout',
                    leading: Icons.logout,
                  ),
                ],
              ),
            ),
        ],),
      ),);
    
  }
}
