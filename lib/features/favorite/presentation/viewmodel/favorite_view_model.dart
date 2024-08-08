import 'package:final_assignment/features/favorite/presentation/navigator/favorite_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteViewModelProvider =
    StateNotifierProvider<FavoriteViewModel, void>(
  (ref) => FavoriteViewModel(ref.read(favoriteViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named favoriteViewModelProvider.
// It creates an instance of FavoriteViewModel and associates it with the favoriteViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class FavoriteViewModel extends StateNotifier<void> {
  FavoriteViewModel(this.navigator) : super(null);

  final FavoriteViewNavigator navigator;

  void openDashboardView() {
    navigator.openDashboardView();
  }
}
