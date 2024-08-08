import 'package:final_assignment/features/order/presentation/navigator/order_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderViewModelProvider = StateNotifierProvider<OrderViewModel, void>(
  (ref) => OrderViewModel(ref.read(orderViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named orderViewModelProvider.
// It creates an instance of OrderViewModel and associates it with the orderViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class OrderViewModel extends StateNotifier<void> {
  OrderViewModel(this.navigator) : super(null);

  final OrderViewNavigator navigator;

  void openDashboardView() {
    navigator.openDashboardView();
  }

  void openMenuView() {
    navigator.openMenuView();
  }
}
