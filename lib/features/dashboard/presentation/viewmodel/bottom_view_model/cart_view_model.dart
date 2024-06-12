import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/cart_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartViewModelProvider = StateNotifierProvider<CartViewModel, void>(
  (ref) => CartViewModel(ref.read(cartViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named cartViewModelProvider.
// It creates an instance of CartViewModel and associates it with the cartViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class CartViewModel extends StateNotifier<void> {
  CartViewModel(this.navigator) : super(null);

  final CartViewNavigator navigator;


 

 

  }