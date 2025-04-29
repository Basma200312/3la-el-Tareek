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
          style: TextStyle(
            color: Colors.blue.shade800,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.blue.shade800),
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
              style: const TextStyle(fontSize: 18),
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
