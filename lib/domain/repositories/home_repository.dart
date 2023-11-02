import 'package:dartz/dartz.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/banner/get_banner_response_model/get_banner_response_model.dart';
import 'package:jerseyhub/domain/models/category/get_category_response_model/get_category_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, GetBannerResponseModel>> getBanners(
      {required TokenModel tokenModel});

  Future<Either<Failure, GetCategoryResponseModel>> getCategorys(
      {required TokenModel tokenModel});
}
