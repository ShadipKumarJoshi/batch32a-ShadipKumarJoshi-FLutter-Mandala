import 'package:dartz/dartz.dart';
import 'package:final_assignment/features/design/domain/entity/design_entity.dart';
import 'package:final_assignment/features/design/domain/usecases/design_usecase.dart';
import 'package:final_assignment/features/design/presentation/viewmodel/design_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'design_test.mocks.dart';
import 'test_data/design_entity_data.dart';

@GenerateNiceMocks([
  MockSpec<DesignUseCase>(),
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late ProviderContainer container;
  late DesignUseCase mockDesignUsecase;
  late List<DesignEntity> lstDesigns;

  setUp(() {
    mockDesignUsecase = MockDesignUseCase();
    lstDesigns = DesignTestData.getDesignTestData();

    container = ProviderContainer(
      overrides: [
        designViewModelProvider.overrideWith(
          // named parameter use vako le designUseCase: mockDesignUsecase
          (ref) => DesignViewModel(designUseCase: mockDesignUsecase),
        )
      ],
    );
  });

// Test initial state
  test('check Design initial state', () async {
    when(mockDesignUsecase.getPaginationDesigns(1, 2))
        .thenAnswer((_) => Future.value(Right(lstDesigns)));
  });

// dispose the container from   provider
  tearDown(
    () {
      container.dispose();
    },
  );
}
