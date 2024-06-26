import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_assignment/app/constants/api_endpoint.dart';
import 'package:final_assignment/core/failure/failure.dart';
import 'package:final_assignment/core/networking/remote/http_service.dart';
import 'package:final_assignment/features/design/data/model/design_api_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final designRemoteDataSourceProvider = Provider.autoDispose(
    (ref) => DesignRemoteDataSource(ref.read(httpServiceProvider)));

class DesignRemoteDataSource {
  final Dio _dio;
  DesignRemoteDataSource(this._dio);
  Future<Either<Failure, List<DesignApiModel>>> getDesigns(int page) async {
    // ???????????????????????
    try {
      final response = await _dio.get(
        ApiEndpoints.getUserDesigns,
        queryParameters: {
          '_page': page,
          '_limit': ApiEndpoints.limitPage,
        },
      );
      final data = response.data as List;
      final design = data.map((e) => DesignApiModel.fromJson(e)).toList();
      return Right(design);
    } on DioException catch (e) {
      // return Left(Failure(message: e.message.toString()));
      return Left(Failure(error: e.message.toString()));
    }
  }
}
