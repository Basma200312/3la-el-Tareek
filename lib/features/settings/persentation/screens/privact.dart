import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:flutter/material.dart';

class PrivactScreen extends StatelessWidget {
  const PrivactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Privacy Policy', style: AppTextStyle.bodyTextMedium18),
              SizedBox(height: 16),
              Text(
                'We respect your privacy and are committed to protecting your personal data.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              SizedBox(height: 10),
              Text(
                '• Data Collection: We may collect your name, phone number, and usage data.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Data Usage: Your data is used to provide services and improve the app.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Data Sharing: We do not share your data with third parties.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Security: We use standard measures to protect your data.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• User Rights: You can request to access, update, or delete your data.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              SizedBox(height: 20),
              Text(
                'For more information, contact support@example.com',
                style: AppTextStyle.bodyTextRegular14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
