
import 'package:ala_el_tareek/features/auth/presentation/screens/login.dart';
import 'package:ala_el_tareek/features/auth/presentation/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:ala_el_tareek/features/main_navigation/main_navigation_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // This file is generated by Firebase CLI

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(const MyApp());
  } catch (e) {
    print('Firebase init error: $e'); 
  }
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
