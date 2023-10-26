import 'package:dartz/dartz.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/models/wish_list/add_to_wish_list/add_to_wish_list.dart';
import 'package:jerseyhub/domain/models/wish_list/get_wishlist_response_model/get_wishlist_response_model.dart';
import 'package:jerseyhub/domain/models/wish_list/remove_from_wish_list_qurrey/remove_from_wish_list_qurrey.dart';

abstract class WishListRepository {
  Future<Either<Failure, GetWishlistResponseModel>> getWishlist(
      {required IdQurrey idQurrey, required TokenModel tokenModel});

  Future<Either<Failure, SuccessResponseModel>> addToWishList(
      {required TokenModel tokenModel, required AddToWishList addToWishList});

  Future<Either<Failure, SuccessResponseModel>> removeFromWishList(
      {required TokenModel tokenModel, required RemoveFromWishListQurrey idQurrey});
}
