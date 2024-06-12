import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/forgot_password_navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/register_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/dashboard_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/cart_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartViewNavigatorProvider = Provider((ref) => CartViewNavigator());

class CartViewNavigator
    with RegisterViewRoute, ForgotPasswordViewRoute, DashboardViewRoute {}

mixin CartViewRoute {
  openCartView() {
    NavigateRoute.pushRoute(const CartView());
  }
}
