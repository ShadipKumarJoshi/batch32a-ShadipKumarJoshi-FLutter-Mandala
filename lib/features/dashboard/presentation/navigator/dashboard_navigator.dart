import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/cart/presentation/navigator/cart_navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/view/dashboard_view.dart';
import 'package:final_assignment/features/design/presentation/navigator/design_navigator.dart';
import 'package:final_assignment/features/favorite/presentation/navigator/favorite_navigator.dart';
import 'package:final_assignment/features/home/presentation/navigator/home_navigator.dart';
import 'package:final_assignment/features/menu/presentation/navigator/menu_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardViewNavigatorProvider = Provider((ref) => DashboardViewNavigator());

class DashboardViewNavigator with CartViewRoute, DesignViewRoute,FavoriteViewRoute,HomeViewRoute,MenuViewRoute {}

mixin DashboardViewRoute {
  openDashboardView() {
    NavigateRoute.pushRoute(const DashboardView());
  }
}
