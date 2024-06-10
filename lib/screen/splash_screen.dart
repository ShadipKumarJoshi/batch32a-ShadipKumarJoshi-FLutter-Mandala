// import 'dart:async';

// import 'package:final_assignment/screen/onboarding_screen.dart';
// import 'package:flutter/material.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   _SplashViewState createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(const Duration(seconds: 10), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const OnbordingScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                         top: MediaQuery.of(context).size.height * 0.2),
//                     child: SizedBox(
//                       height: 400,
//                       child: Column(
//                         children: [
//                           Expanded(
//                             child: Image.asset(
//                               'assets/images/splash.gif',
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 50),
//                   const Text(
//                     'v. 1.00',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
