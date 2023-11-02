import 'package:dartz/dartz.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:jerseyhub/domain/models/cart/cart_quantity_update_qurrey/cart_quantity_update_qurrey.dart';
import 'package:jerseyhub/domain/models/cart/get_cart_response_model/get_cart_response_model.dart';
import 'package:jerseyhub/domain/models/cart/remove_from_cart_qurrey/remove_from_cart_qurrey.dart';
import 'package:jerseyhub/domain/models/coupon/get_coupon_response_model/get_coupon_response_model.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';

abstract class CartRepository {
  Future<Either<Failure, SuccessResponseModel>> addToCart(
      {required TokenModel tokenModel, required AddToCartModel addToCartModel});

  Future<Either<Failure, GetCartResponseModel>> getCart(
      {required TokenModel tokenModel, required IdQurrey idQurrey});

  Future<Either<Failure, SuccessResponseModel>> updateQuantityPlus(
      {required TokenModel tokenModel,
      required CartQuantityUpdateQurrey cartQuantityUpdateQurrey});

  Future<Either<Failure, SuccessResponseModel>> updateQuantityminus(
      {required TokenModel tokenModel,
      required CartQuantityUpdateQurrey cartQuantityUpdateQurrey});

  Future<Either<Failure, SuccessResponseModel>> removeFromCart(
      {required TokenModel tokenModel,
      required RemoveFromCartQurrey removeFromCartQurrey});

  Future<Either<Failure, GetCouponResponseModel>> getCoupons(
      {required TokenModel tokenModel});
}
