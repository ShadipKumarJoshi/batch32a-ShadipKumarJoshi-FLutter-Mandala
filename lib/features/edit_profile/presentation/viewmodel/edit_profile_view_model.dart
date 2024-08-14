import 'package:final_assignment/features/edit_profile/presentation/navigator/edit_profile_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final editProfileViewModelProvider =
    StateNotifierProvider<EditProfileViewModel, void>(
  (ref) => EditProfileViewModel(ref.watch(editProfileViewNavigatorProvider)),
);

// This line defines a StateNotifierProvider named editProfileViewModelProvider.
// It creates an instance of EditProfileViewModel and associates it with the editProfileViewNavigatorProvider.
// The void type parameter indicates that this provider doesn’t have any state value; it only manages actions.
class EditProfileViewModel extends StateNotifier<void> {
  EditProfileViewModel(this.navigator) : super(null);

  final EditProfileViewNavigator navigator;

  void openDashboardView() {
    navigator.openDashboardView();
  }

  void openProfileView() {
    navigator.openProfileView();
  }
}
