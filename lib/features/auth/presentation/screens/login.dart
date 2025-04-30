
//  //import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// //import 'package:ala_el_tareek/features/auth/presentation/screens/login.dart';
 
// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 20, 70, 220),
//       body: SafeArea(
//         child: Center(
//           child:SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.network('https://play-lh.googleusercontent.com/x4pzM4n5cLNqyOG-PiwO651b4J4kW05QDug0jDcxwJityCYE0EyP4QUv1cGKJQONiA',
//             height: 150,
//           ),
//           SizedBox(height: 20),

//           Text(
//             "3la ElTareek",
           
//             style:TextStyle(
// fontSize: 45, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "welcome back!",
//               style:TextStyle(
// fontSize: 18),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             //ايميل
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal:30),//ده اللي بيظبط حجم مربع بتاع الاميل
//             child: Container(
//               decoration: BoxDecoration(
//                 color:const Color.fromARGB(255, 140, 147, 175),
//                 borderRadius: BorderRadius.circular(12)),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "Email"
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),//المسافه بين المربعين
//              Padding(
//               padding: const EdgeInsets.symmetric(horizontal:30),//ده اللي بيظبط حجم مربع بتاع الاميل
//             child: Container(
//               decoration: BoxDecoration(
//                 color:const Color.fromARGB(255, 140, 147, 175),
//                 borderRadius: BorderRadius.circular(12)),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: TextField(
//                     obscureText: true,//ده اللي بيخلي بالسورد مخفي
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "password"
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             ElevatedButton( //الزارا
//               onPressed:() {},
//                child: Text('Sign IN',style: TextStyle(fontSize: 20),),
               
//                style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.black),
//                 foregroundColor:MaterialStateProperty.all(const Color.fromARGB(255, 249, 248, 246)) ,
//                // padding: MaterialStateProperty.all(EdgeInsets.all(18))


//                ),
//                ),
//               //text sign up
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Not yet a member? ",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     'Sign up now',
//                     style: TextStyle(
//                       color: const Color.fromARGB(221, 100, 6, 223),
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 ],
//               )
//         ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
//         //    TextField(
// //decoration: InputDecoration(
//  // border: InputBorder.none,
