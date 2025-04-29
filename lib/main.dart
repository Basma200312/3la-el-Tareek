import 'package:flutter/material.dart';
import 'package:ala_el_tareek/features/main_navigation/main_navigation_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationScreen(),
      
    );


  }
}
