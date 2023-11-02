import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/inventory/get_individual_inventory_response/get_individual_inventory_response.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:jerseyhub/domain/models/inventory/page_qurrey_get_inventory/page_qurrey_get_inventory.dart';
import 'package:jerseyhub/domain/models/inventory/search_model/search_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/repositories/inventory_repository.dart';

class InventoryApi implements InventoryRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, GetIndividualInventoryResponse>> getInventoryDetails(
      {required IdQurrey idQurrey, required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.productDetail,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetIndividualInventoryResponse.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message: GetIndividualInventoryResponse.fromJson(response.data)
                .message));
      } else {
        return Left(Failure.clientFailure(
            message: GetIndividualInventoryResponse.fromJson(response.data)
                .message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetInventoryResponseModel>> getInventorys(
      {required PageQurreyGetInventory pageQurreyGetInventory,
      required TokenModel tokenModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.getProducts,
          queryParameters: pageQurreyGetInventory.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetInventoryResponseModel>> search(
      {required TokenModel tokenModel,
      required SearchModel searchModel}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response =
          await _dio.get(ApiEndPoints.search, data: searchModel.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }

  @override
  Future<Either<Failure, GetInventoryResponseModel>> getCategoryInventories(
      {required TokenModel tokenModel, required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.categoryProducts,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetInventoryResponseModel.fromJson(response.data));
      } else if (response.statusCode == 500) {
        return Left(Failure.serverFailure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message));
      } else {
        return Left(Failure.clientFailure(
            message:
                GetInventoryResponseModel.fromJson(response.data).message));
      }
    } catch (e) {
      return Left(Failure.serverFailure(message: 'something went wrong'));
    }
  }
}
