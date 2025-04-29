import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 26,
            color: Colors.blue.shade800,
            fontWeight: FontWeight.bold,
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
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                station['location']!,
                style: TextStyle(color: Colors.blue.shade800),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Handle tap
              },
            ),
          );
        },
      ),
    );
  }
}
