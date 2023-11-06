import 'package:dartz/dartz.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/order/get_checkout_response_model/get_checkout_response_model.dart';
import 'package:jerseyhub/domain/models/order/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:jerseyhub/domain/models/order/get_order_response_model/get_order_response_model.dart';
import 'package:jerseyhub/domain/models/order/place_order_model/place_order_model.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';

abstract class OrderRepository {
  Future<Either<Failure, GetCheckoutResponseModel>> getCheckout(
      {required TokenModel tokenModel, required IdQurrey idQurrey});

  Future<Either<Failure, SuccessResponseModel>> placeOrder(
      {required TokenModel tokenModel,
      required PlaceOrderModel placeOrderModel});

  Future<Either<Failure, GetOrderResponseModel>> getOrders(
      {required TokenModel tokenModel, required IdQurrey idQurrey});

  Future<Either<Failure, GetOrderDetailsResponseModel>> getOrderDetails(
      {required TokenModel tokenModel, required int orderId});
}
