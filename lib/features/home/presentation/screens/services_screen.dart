// ignore: unused_import
import 'package:ala_el_tareek/core/app_colors.dart';
import 'package:ala_el_tareek/core/app_font_style.dart';
import 'package:flutter/material.dart';
import 'service_details_screen.dart';

class ServicesScreen extends StatefulWidget {
  final double balance;
  final Function(double) onDeduct;
  final List<Map<String, dynamic>> transactions;

  const ServicesScreen({
    super.key,
    required this.balance,
    required this.onDeduct,
    required this.transactions,
  });

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  final List<Map<String, dynamic>> services = const [
    {'name': 'Fuel Delivery', 'icon': Icons.local_gas_station},
    {'name': 'Battery Boost', 'icon': Icons.battery_charging_full},
    {'name': 'Tire Change', 'icon': Icons.build},
    {'name': 'Towing Service', 'icon': Icons.car_repair},
    {'name': 'Oil Change', 'icon': Icons.oil_barrel},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          'Services',
          style: AppTextStyle.titleTextMedium24.copyWith(
            color: AppColors.mainColor,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue.shade800,
        elevation: 1,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(service['icon'], color: Colors.blue, size: 30),
              title: Text(
                service['name'],
                style: AppTextStyle.bodyTextMedium18,
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ServiceDetailsScreen(
                          serviceName: service['name'],
                          onConfirm: () {
                            widget.onDeduct(50);
                            widget.transactions.add({
                              'type': 'Deduct',
                              'amount': 50,
                              'date': DateTime.now(),
                              'service': service['name'],
                            });
                          },
                        ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
