import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/banner/get_banner_response_model/get_banner_response_model.dart';
import 'package:jerseyhub/domain/models/category/get_category_response_model/get_category_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/repositories/home_repository.dart';

@LazySingleton(as: HomeRepository)
@injectable
class HomeApi implements HomeRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, GetBannerResponseModel>> getBanners(
      {required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.banner);
      if (response.statusCode == 200) {
        return Right(GetBannerResponseModel.fromJson(response.data));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure().copyWith(
            message: GetBannerResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure().copyWith(
            message: GetBannerResponseModel.fromJson(response.data).message));
      }
    } on DioException catch (e) {
      return Left(Failure.tokenExpire().copyWith(message: e.toString()));
    } catch (e) {
      return Left(
          Failure.serverFailure().copyWith(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetCategoryResponseModel>> getCategorys(
      {required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.category);
      if (response.statusCode == 200) {
        return Right(GetCategoryResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure().copyWith(
            message: GetCategoryResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure().copyWith(
            message: GetCategoryResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(
          Failure.serverFailure().copyWith(message: 'something went wrong'));
    }
  }
}
