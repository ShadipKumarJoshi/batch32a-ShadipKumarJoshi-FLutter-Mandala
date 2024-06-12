import 'package:final_assignment/features/dashboard/presentation/navigator/bottom_navigator/design_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final designViewModelProvider = StateNotifierProvider<DesignViewModel, void>(
  (ref) => DesignViewModel(ref.read(designViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named designViewModelProvider.
// It creates an instance of DesignViewModel and associates it with the designViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class DesignViewModel extends StateNotifier<void> {
  DesignViewModel(this.navigator) : super(null);

  final DesignViewNavigator navigator;


 

 

  }