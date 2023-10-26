import 'package:dartz/dartz.dart';
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

abstract class UserRepository {
  Future<Either<Failure, UserDetailsResponseModel>> getUserDetails(
      {required TokenModel tokenModel, required IdQurrey idQurrey});

  Future<Either<Failure, SuccessResponseModel>> addAddress(
      {required TokenModel tokenModel,
      required AddAddressModel addAddressModel,
      required IdQurrey idQurrey});

  Future<Either<Failure, GetAddressResponseModel>> getAddress(
      {required TokenModel tokenModel, required IdQurrey idQurrey});

  Future<Either<Failure, SuccessResponseModel>> changeEmail(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangeEmail changeEmail});

  Future<Either<Failure, SuccessResponseModel>> changePhone(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangePhoneNumber changePhoneNumber});

  Future<Either<Failure, SuccessResponseModel>> changeName(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangeName changeName});

  Future<Either<Failure, SuccessResponseModel>> changePassword(
      {required TokenModel tokenModel,
      required IdQurrey idQurrey,
      required ChangePassword changePassword});
}
