import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ala_el_tareek/core/app_colors.dart';
// ignore: unused_import
import 'package:ala_el_tareek/core/app_font_style.dart';

class StationsScreen extends StatelessWidget {
  const StationsScreen({super.key});

  final List<Map<String, String>> stations = const [
    {'name': 'Shell Station', 'location': '5 km away'},
    {'name': 'Total Station', 'location': '3.2 km away'},
    {'name': 'Wataniya Fuel', 'location': '7.5 km away'},
    {'name': 'Mobil Station', 'location': '6.1 km away'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          'Stations',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 1,
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: stations.length,
        itemBuilder: (context, index) {
          final station = stations[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.blue.shade800,
                child: const Icon(Icons.local_gas_station, color: Colors.white),
              ),
              title: Text(
                station['name']!,
                style: AppTextStyle.bodyTextMedium16,
              ),
              subtitle: Text(
                station['location']!,
                style: AppTextStyle.bodyTextRegular16.copyWith(
                  color: AppColors.mainColor,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
