import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:flutter/material.dart';

class ServiceDetailsScreen extends StatelessWidget {
  final String serviceName;
  final VoidCallback onConfirm;

  const ServiceDetailsScreen({
    super.key,
    required this.serviceName,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          serviceName,
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.mainColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.car_repair, size: 100, color: Colors.blue.shade700),
            const SizedBox(height: 20),
            Text(
              'Confirm you want to request $serviceName service for 50 EGP?',
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyTextMedium16,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                onConfirm();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$serviceName requested!')),
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 12,
                ),
              ),
              child: const Text(
                'Confirm Service',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
