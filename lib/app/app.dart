import 'package:final_assignment/screen/register_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // themes

      // home: SplashScreen(),
      // home: LoginScreen(),
      home: RegisterScreen(),
      // routes: {
      //       'login': (context) => LoginScreen(),
      // 'register': (context) => RegisterScreen(),
      // },
    );
  }
}
