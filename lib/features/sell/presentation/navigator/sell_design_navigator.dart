import 'package:final_assignment/app/navigator/navigator.dart';
import 'package:final_assignment/features/dashboard/presentation/navigator/dashboard_navigator.dart';
import 'package:final_assignment/features/edit_sell/presentation/navigator/edit_sell_design_navigator.dart';
import 'package:final_assignment/features/sell/presentation/view/sell_design_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sellDesignViewNavigatorProvider = Provider((ref) => SellDesignViewNavigator());

class SellDesignViewNavigator
    with DashboardViewRoute, EditSellDesignViewRoute {}

mixin SellDesignViewRoute {
  openSellDesignView() {
    NavigateRoute.pushRoute(const SellDesignView());
  }
}
