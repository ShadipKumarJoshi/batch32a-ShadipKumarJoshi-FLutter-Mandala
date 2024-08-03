import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/forgot_password_navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/register_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/dashboard_navigator.dart';
import 'package:final_assignment/features/sell/presentation/view/sell_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sellViewNavigatorProvider = Provider((ref) => SellViewNavigator());

class SellViewNavigator
    with RegisterViewRoute, ForgotPasswordViewRoute, DashboardViewRoute {}

mixin SellViewRoute {
  openSellView() {
    NavigateRoute.pushRoute(const SellView());
  }
}
