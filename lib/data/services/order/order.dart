import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/cart/get_checkout_response_model/get_checkout_response_model.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/order/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:jerseyhub/domain/models/order/get_order_response_model/get_order_response_model.dart';
import 'package:jerseyhub/domain/models/order/place_order_model/place_order_model.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/repositories/order_repository.dart';

class OrderApi implements OrderRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, GetCheckoutResponseModel>> getCheckout(
      {required TokenModel tokenModel, required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.checkOut,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetCheckoutResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: GetCheckoutResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: GetCheckoutResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, SuccessResponseModel>> placeOrder(
      {required TokenModel tokenModel,
      required PlaceOrderModel placeOrderModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.post(ApiEndPoints.checkOutOrder,
          data: placeOrderModel.toJson());
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
  Future<Either<Failure, GetOrderDetailsResponseModel>> getOrderDetails(
      {required TokenModel tokenModel, required int orderId}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(
          ApiEndPoints.orderDetails.replaceAll('{id}', orderId.toString()));
      if (response.statusCode == 200) {
        return Right(GetOrderDetailsResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message:
                GetOrderDetailsResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message:
                GetOrderDetailsResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetOrderResponseModel>> getOrders(
      {required TokenModel tokenModel, required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.getOrders,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetOrderResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: GetOrderResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message: GetOrderResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }
}
