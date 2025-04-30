import 'package:flutter/material.dart';

class PrivactScreen extends StatelessWidget {
  const PrivactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar:AppBar(title:Text("Privacy Policy")),
      body: Center(child: Text("This is the Privacy Policy page"),),
    );
  }
}