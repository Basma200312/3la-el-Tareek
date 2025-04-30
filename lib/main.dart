
import 'package:ala_el_tareek/features/auth/presentation/screens/login.dart';
import 'package:ala_el_tareek/features/auth/presentation/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:ala_el_tareek/features/main_navigation/main_navigation_screen.dart';
//import 'login_screen.dart';
//import 'signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login', 
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/main': (context) => const MainNavigationScreen(), 
      },
    );
  }
}
