import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/home_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider = StateNotifierProvider<HomeViewModel, void>(
  (ref) => HomeViewModel(ref.read(homeViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named homeViewModelProvider.
// It creates an instance of HomeViewModel and associates it with the homeViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class HomeViewModel extends StateNotifier<void> {
  HomeViewModel(this.navigator) : super(null);

  final HomeViewNavigator navigator;


 

 

  }