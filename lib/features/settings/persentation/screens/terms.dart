import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(  
       appBar:AppBar(title:Text("Terms & Conditions")),
      body: Center(child: Text("This is the Terms & Conditions page"),),
      );
  }
}