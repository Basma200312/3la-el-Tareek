import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "FAQs",
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: Column(
        spacing: 8,
        children: [
          SizedBox(height: 20,),
          ExpansionTile(
            title: Text(
              "How can I reset my password?",
              style: AppTextStyle.bodyTextMedium16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Go to settings > Account > Reset Password.",
                  style: AppTextStyle.bodyTextRegular14,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "How can I contact customer support?",
              style: AppTextStyle.bodyTextMedium16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "You can contact us via email at support@example.com.",
                  style: AppTextStyle.bodyTextRegular14,
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
              "Where can I find the latest offers?",
              style: AppTextStyle.bodyTextMedium16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Go to the 'Offers' section in the bottom navigation.",
                  style: AppTextStyle.bodyTextRegular14,
                ),
              ),
            ],
          ),
       
          ExpansionTile(
            title: Text(
              "How do I delete my account?",
              style: AppTextStyle.bodyTextMedium16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "To delete your account, please go to Settings > Account > Delete Account.",
                  style: AppTextStyle.bodyTextRegular14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
