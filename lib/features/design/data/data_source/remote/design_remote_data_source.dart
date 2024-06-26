import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_assignment/app/constants/api_endpoint.dart';
import 'package:final_assignment/core/failure/failure.dart';
import 'package:final_assignment/core/networking/remote/http_service.dart';
import 'package:final_assignment/features/design/data/model/design_api_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final designRemoteDataSourceProvider = Provider.autoDispose(
    (ref) => DesignRemoteDataSource(ref.read(httpServiceProvider)));
// dio: ref.read(httpServiceProvider),
//     userSharedPrefs: ref.read(userSharedPrefsProvider),
//   ),
// );

class DesignRemoteDataSource {
  final Dio _dio;
  // final UserSharedPrefs userSharedPrefs;

  DesignRemoteDataSource(this._dio);
  Future<Either<Failure, List<DesignApiModel>>> getDesigns(int page) async {
    try {
      // Get the token from shared preferences (local storage)
      // String? token;
      // var data = await _userSharedPrefs.getUserToken();
      // data.fold(
      //   (l) => token = null,
      //   (r) => token = r!,
      // );

      // // If token is null, return an error
      // if (token == null) {
      //   return Left(Failure(error: 'Token is missing'));
      // }

      // Make the API request with the token in the headers

      final response = await _dio.get(
        ApiEndpoints.getUserDesigns,

        // ??????????????????/ token from localStorage
        queryParameters: {
          '_page': page,
          '_limit': ApiEndpoints.limitPage,
        },

// options: Options(
//           headers: {
//             'Authorization': 'Bearer $token',
//           },
//         ),
      );

      // Parse the response data into a list of DesignApiModel

      final data = response.data as List;
      final design = data.map((e) => DesignApiModel.fromJson(e)).toList();
      return Right(design);
    } on DioException catch (e) {
      // return Left(Failure(message: e.message.toString()));
      return Left(Failure(error: e.message.toString()));
    }
  }
}
