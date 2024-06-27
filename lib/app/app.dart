import 'package:final_assignment/app/navigator_key/navigator_key.dart';
// import 'package:final_assignment/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:final_assignment/features/splash/presentation/view/splash_view.dart';
import 'package:final_assignment/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Statelesswidget changed to ConsumerWidget
class App extends ConsumerWidget {
  const App({super.key});

  @override
  // Add WidgetRef ref
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: const SplashView(),
      // home: DashboardView(),

      // themes// this method is not used now/ we use navigatorkey

      // home: const SplashView(),
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
