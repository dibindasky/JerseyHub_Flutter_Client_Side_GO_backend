import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/models/wish_list/add_to_wish_list/add_to_wish_list.dart';
import 'package:jerseyhub/domain/models/wish_list/get_wishlist_response_model/get_wishlist_response_model.dart';
import 'package:jerseyhub/domain/models/wish_list/remove_from_wish_list_qurrey/remove_from_wish_list_qurrey.dart';
import 'package:jerseyhub/domain/repositories/wish_list_repository.dart';

@LazySingleton(as: WishListRepository)
@injectable
class WishListApi implements WishListRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, SuccessResponseModel>> addToWishList(
      {required TokenModel tokenModel,
      required AddToWishList addToWishList}) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.post(ApiEndPoints.addToWishList,
          data: addToWishList.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } catch (e) {
      return Left(Failure.serverFailure());
    }
  }

  @override
  Future<Either<Failure, GetWishlistResponseModel>> getWishlist(
      {required IdQurrey idQurrey, required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.getWishList,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetWishlistResponseModel.fromJson(response.data));
      } else if (response.statusCode == 401) {
        return Left(Failure.tokenExpire());
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure().copyWith(
            message: GetWishlistResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure().copyWith(
            message: GetWishlistResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure().copyWith(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> removeFromWishList(
      {required TokenModel tokenModel,
      required RemoveFromWishListQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.delete(ApiEndPoints.removeFromWishList,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure());
      } else {
        return Left(Failure.clientFailure());
      }
    } catch (e) {
      return Left(Failure.serverFailure());
    }
  }
}
