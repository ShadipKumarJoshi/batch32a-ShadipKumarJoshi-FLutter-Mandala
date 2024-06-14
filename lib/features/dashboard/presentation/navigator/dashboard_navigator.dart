import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/cart_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/design_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/favorite_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/home_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/menu_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardViewNavigatorProvider = Provider((ref) => DashboardViewNavigator());

class DashboardViewNavigator with CartViewRoute, DesignViewRoute,FavoriteViewRoute,HomeViewRoute,MenuViewRoute {}

mixin DashboardViewRoute {
  openDashboardView() {
    NavigateRoute.pushRoute(const DashboardView());
  }
}
