import 'package:final_assignment/screen/splash_screen.dart';
import 'package:final_assignment/theme/theme_data.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      // themes

      home: SplashScreen(),
      // home: LoginScreen(),
      // home: RegisterScreen(),
      // home: OnbordingScreen(),
      // routes: {
      //       'login': (context) => LoginScreen(),
      // 'register': (context) => RegisterScreen(),
      // home: DashboardScreen(),
      // },
    );
  }
}
