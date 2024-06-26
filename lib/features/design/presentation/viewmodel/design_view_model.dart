import 'package:final_assignment/features/design/data/data_source/remote/design_remote_data_source.dart';
import 'package:final_assignment/features/design/presentation/state/design_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final designViewModelProvider =
    StateNotifierProvider<DesignViewModel, DesignState>((ref) {
  final designRemoteDataSource = ref.read(designRemoteDataSourceProvider);
  return DesignViewModel(designRemoteDataSource);
});

class DesignViewModel extends StateNotifier<DesignState> {
  final DesignRemoteDataSource _designRemoteDataSource;
  DesignViewModel(this._designRemoteDataSource) : super(DesignState.initial()) {
    getDesigns();
  }

  Future resetState() async {
    state = DesignState.initial();
    getDesigns();
  }

  Future getDesigns() async {
    state = state.copyWith(isLoading: true);
    final currentState = state;
    final page = currentState.page + 1;
    final design = currentState.design;
    final hasReachedMax = currentState.hasMaxReached;
    if (!hasReachedMax) {
      // get data from data source
      final result = await _designRemoteDataSource.getDesigns(page);
      result.fold(
        (failure) =>
            state = state.copyWith(hasMaxReached: true, isLoading: false),
        (data) {
          if (data.isEmpty) {
            state = state.copyWith(hasMaxReached: true);
          } else {
            state = state.copyWith(
              design: [...design, ...data],
              page: page,
              isLoading: false,
            );
          }
        },
      );
    }
  }
}





// ???????????????????/
// class DesignViewModel extends StateNotifier<void> {
//   DesignViewModel(this.navigator) : super(null);

//   final DesignViewNavigator navigator;

//   }