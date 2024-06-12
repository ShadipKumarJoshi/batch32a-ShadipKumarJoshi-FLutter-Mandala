import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/forgot_password_navigator.dart';
import 'package:final_assignment/features/auth/presentation/navigator/register_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/dashboard_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/view/bottom_view/favorite_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteViewNavigatorProvider = Provider((ref) => FavoriteViewNavigator());

class FavoriteViewNavigator
    with RegisterViewRoute, ForgotPasswordViewRoute, DashboardViewRoute {}

mixin FavoriteViewRoute {
  openFavoriteView() {
    NavigateRoute.pushRoute(const FavoriteView());
  }
}
