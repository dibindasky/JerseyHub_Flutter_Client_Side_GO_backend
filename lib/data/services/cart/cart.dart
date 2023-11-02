import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:jerseyhub/domain/models/cart/cart_quantity_update_qurrey/cart_quantity_update_qurrey.dart';
import 'package:jerseyhub/domain/models/cart/get_cart_response_model/get_cart_response_model.dart';
import 'package:jerseyhub/domain/models/cart/remove_from_cart_qurrey/remove_from_cart_qurrey.dart';
import 'package:jerseyhub/domain/models/coupon/get_coupon_response_model/get_coupon_response_model.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/repositories/cart_repository.dart';

class CartApi implements CartRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, SuccessResponseModel>> addToCart(
      {required TokenModel tokenModel,
      required AddToCartModel addToCartModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.post(ApiEndPoints.addToCart,
          data: addToCartModel.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetCartResponseModel>> getCart(
      {required TokenModel tokenModel, required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response =
          await _dio.get(ApiEndPoints.cart, queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetCartResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: GetCartResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: GetCartResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> removeFromCart(
      {required TokenModel tokenModel,
      required RemoveFromCartQurrey removeFromCartQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.delete(ApiEndPoints.removeFromCart,
          queryParameters: removeFromCartQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> updateQuantityPlus(
      {required TokenModel tokenModel,
      required CartQuantityUpdateQurrey cartQuantityUpdateQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.put(ApiEndPoints.updateQuantityPlus,
          queryParameters: cartQuantityUpdateQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> updateQuantityminus(
      {required TokenModel tokenModel,
      required CartQuantityUpdateQurrey cartQuantityUpdateQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.put(ApiEndPoints.updateQuantityMinus,
          queryParameters: cartQuantityUpdateQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(SuccessResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: SuccessResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetCouponResponseModel>> getCoupons(
      {required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.coupon);
      if (response.statusCode == 200) {
        return Right(GetCouponResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: GetCouponResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: GetCouponResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }
}
