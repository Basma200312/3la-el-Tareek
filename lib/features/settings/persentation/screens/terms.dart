import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Terms & Conditions",
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
              Text('Terms & Conditions', style: AppTextStyle.bodyTextMedium18),
              SizedBox(height: 16),
              Text(
                'By using this application, you agree to the following terms:',
                style: AppTextStyle.bodyTextRegular14,
              ),
              SizedBox(height: 10),
              Text(
                '• Account Responsibility: Keep your login information confidential.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Acceptable Use: Don’t use the app for illegal purposes.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Service Changes: We may change or stop the service anytime.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Limitation of Liability: We are not responsible for any damages.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              Text(
                '• Updates: Continued use means you accept updated terms.',
                style: AppTextStyle.bodyTextRegular14,
              ),
              SizedBox(height: 20),
              Text(
                'For questions, contact support@example.com',
                style: AppTextStyle.bodyTextRegular14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
