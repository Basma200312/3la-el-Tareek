import 'package:ala_el_tareek/features/auth/presentation/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';

void showLogutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "!",
                style: TextStyle(fontSize: 60, color: AppColors.mainColor),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),
              Text(
                "Are you sure you want to logout?",
                style: AppTextStyle.bodyTextRegular16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.red, width: 2),
                      foregroundColor: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Cancel
                    },
                    child: Text(
                      "Cancel",
                      style: AppTextStyle.bodyTextRegular14,
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.mainColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      // Logout logic
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text(
                      "Confirm",
                      style: AppTextStyle.bodyTextRegular14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
