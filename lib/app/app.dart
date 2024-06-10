
import 'package:final_assignment/app/navigator_key/navigator_key.dart';
import 'package:final_assignment/app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppNavigator.navigatorKey,
      title: 'Mandala T-On-Line Prints',
      theme: AppTheme.getApplicationTheme(false),
      home: const SplashView(),
      
      // --- routes
      // home: SplashScreen(),
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
