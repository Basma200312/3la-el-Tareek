import 'package:flutter/material.dart';
import 'package:omt_project/features/auth/presentation/screens/Offers.dart';
import 'package:omt_project/features/main_navigation/main_navigation_screen.dart';
//import 'package:omt_project/features/auth/presentation/screens/login.dart';
//import 'package:omt_project/features/auth/presentation/screens/Signup.dart';
//import 'package:omt_project/features/auth/presentation/screens/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationScreen(),
      // initialRoute:"/" ,//عايزه ابداء بي انهي صفحه
      // routes: {
      //   "/":(context)=>const Login(),
      //   '/Signup':(context)=>const Login (),
      // },
     // theme:ThemeData(
     //   primarySwatch:Colors.blue,
     // ) ,
     // home: const Login()
    );


  }
}
