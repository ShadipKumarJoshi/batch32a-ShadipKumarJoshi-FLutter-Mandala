import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/forgot_password_navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/register_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/dashboard_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/menu_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final menuViewNavigatorProvider = Provider((ref) => MenuViewNavigator());

class MenuViewNavigator
    with RegisterViewRoute, ForgotPasswordViewRoute, DashboardViewRoute {}

mixin MenuViewRoute {
  openMenuView() {
    NavigateRoute.pushRoute(const MenuView());
  }
}
