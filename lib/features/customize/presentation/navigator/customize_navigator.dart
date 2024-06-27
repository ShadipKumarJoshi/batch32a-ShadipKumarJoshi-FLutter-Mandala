import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/forgot_password_navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/register_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/dashboard_navigator.dart';
import 'package:final_assignment/features/customize/presentation/view/customize_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final customizeViewNavigatorProvider = Provider((ref) => CustomizeViewNavigator());

class CustomizeViewNavigator
    with RegisterViewRoute, ForgotPasswordViewRoute, DashboardViewRoute {}

mixin CustomizeViewRoute {
  openCustomizeView() {
    NavigateRoute.pushRoute(const CustomizeView());
  }
}
