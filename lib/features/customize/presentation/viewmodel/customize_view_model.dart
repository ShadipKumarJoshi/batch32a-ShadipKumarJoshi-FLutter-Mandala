import 'package:final_assignment/features/customize/presentation/navigator/customize_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final customizeViewModelProvider = StateNotifierProvider<CustomizeViewModel, void>(
  (ref) => CustomizeViewModel(ref.read(customizeViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named customizeViewModelProvider.
// It creates an instance of CustomizeViewModel and associates it with the customizeViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class CustomizeViewModel extends StateNotifier<void> {
  CustomizeViewModel(this.navigator) : super(null);

  final CustomizeViewNavigator navigator;


 

 

  }