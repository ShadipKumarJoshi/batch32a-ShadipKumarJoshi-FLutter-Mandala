import 'package:final_assignment/features/design/data/model/design_api_model.dart';

class DesignState {
  final List<DesignApiModel> design;
  final bool isLoading;
  final bool hasMaxReached;
  final int page;

  const DesignState({
    required this.design,
    required this.isLoading,
    required this.hasMaxReached,
    required this.page,
  });

  factory DesignState.initial() {
    return const DesignState(
      design: [],
      isLoading: false,
      hasMaxReached: false,
      page: 0,
    );
  }

  DesignState copyWith({
    List<DesignApiModel>? design,
    bool? isLoading,
    bool? hasMaxReached,
    int? page,
  }) {
    return DesignState(
      design: design ?? this.design,
      isLoading: isLoading ?? this.isLoading,
      hasMaxReached: hasMaxReached ?? this.hasMaxReached,
      page: page ?? this.page,
    );
  }
}
