import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/success_response_model/success_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/models/user/address/add_address_model/add_address_model.dart';
import 'package:jerseyhub/domain/models/user/address/get_address_response_model/get_address_response_model.dart';
import 'package:jerseyhub/domain/models/user/details/change_email/change_email.dart';
import 'package:jerseyhub/domain/models/user/details/change_name/change_name.dart';
import 'package:jerseyhub/domain/models/user/details/change_phone_number/change_phone_number.dart';
import 'package:jerseyhub/domain/models/user/security/change_password/change_password.dart';
import 'package:jerseyhub/domain/models/user/user_details_response_model/user_details_response_model.dart';
import 'package:jerseyhub/domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
@injectable
class UserApi implements UserRepository {
  final Dio _dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<Failure, SuccessResponseModel>> addAddress(
      {required TokenModel tokenModel,
      required AddAddressModel addAddressModel,
      required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.post(ApiEndPoints.userAddress,
          data: addAddressModel.toJson(), queryParameters: idQurrey.toJson());
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
  Future<Either<Failure, SuccessResponseModel>> changeEmail(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangeEmail changeEmail}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.put(ApiEndPoints.editEmail,
          data: changeEmail.toJson(), queryParameters: idQurrey.toJson());
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
  Future<Either<Failure, SuccessResponseModel>> changeName(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangeName changeName}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.put(ApiEndPoints.editName,
          data: changeName.toJson(), queryParameters: idQurrey.toJson());
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
  Future<Either<Failure, SuccessResponseModel>> changePassword(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangePassword changePassword}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.put(ApiEndPoints.changePassword,
          data: changePassword.toJson(), queryParameters: idQurrey.toJson());
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
  Future<Either<Failure, SuccessResponseModel>> changePhone(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangePhoneNumber changePhoneNumber}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.put(ApiEndPoints.editPhone,
          data: changePhoneNumber.toJson(), queryParameters: idQurrey.toJson());
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
  Future<Either<Failure, GetAddressResponseModel>> getAddress(
      {required TokenModel tokenModel, required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.userAddress,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(GetAddressResponseModel.fromJson(response.data));
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
  Future<Either<Failure, UserDetailsResponseModel>> getUserDetails(
      {required TokenModel tokenModel, required IdQurrey idQurrey}) async {
    try {
      _dio.options.headers['Authorization'] = tokenModel.accessToken;
      final response = await _dio.get(ApiEndPoints.userDetail,
          queryParameters: idQurrey.toJson());
      if (response.statusCode == 200) {
        return Right(UserDetailsResponseModel.fromJson(response.data));
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
