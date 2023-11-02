import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/banner/get_banner_response_model/get_banner_response_model.dart';
import 'package:jerseyhub/domain/models/category/get_category_response_model/get_category_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/repositories/home_repository.dart';

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
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: GetBannerResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: GetBannerResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
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
        return Left(Failure.serverFailure(
            message: GetCategoryResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: GetCategoryResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }
}
