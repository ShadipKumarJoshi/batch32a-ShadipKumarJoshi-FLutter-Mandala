import 'package:final_assignment/features/sell/presentation/navigator/sell_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sellViewModelProvider = StateNotifierProvider<SellViewModel, void>(
  (ref) => SellViewModel(ref.read(sellViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named sellViewModelProvider.
// It creates an instance of SellViewModel and associates it with the sellViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class SellViewModel extends StateNotifier<void> {
  SellViewModel(this.navigator) : super(null);

  final SellViewNavigator navigator;


 

 

  }