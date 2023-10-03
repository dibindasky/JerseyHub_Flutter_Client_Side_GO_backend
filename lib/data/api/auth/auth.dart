import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/domain/core/api_endpoints/api_endpoints.dart';
import 'package:jerseyhub/domain/core/failure/error_msg.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';
import 'package:jerseyhub/domain/models/auth/verify_otp_model/verify_otp_model.dart';
import 'package:jerseyhub/domain/models/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:jerseyhub/domain/repositories/auth_repository.dart';

class AuthApi extends AuthRepository {
  final Dio dio = Dio(BaseOptions(baseUrl: ApiEndPoints.baseUrl));

  @override
  Future<Either<ErrorMsg, PhoneNumberOtpResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel}) async {
    try {
      final response = await dio.post(ApiEndPoints.loginOtp,
          data: phoneNumberModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        log('message => ${response.data['message']}');
        return Right(PhoneNumberOtpResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message:
                PhoneNumberOtpResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SignInResponseModel>> signIn(
      {required SignInModel signInModel}) async {
    print(signInModel.toJson().toString());
    try {
      final response =
          await dio.post(ApiEndPoints.login, data: signInModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SignInResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SignInResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      print('dio error => ${dioError.message}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, SignUpResponseModel>> signUp(
      {required SignUpModel signUpModel}) async {
    try {
      final response =
          await dio.post(ApiEndPoints.signUp, data: signUpModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(SignUpResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: SignUpResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }

  @override
  Future<Either<ErrorMsg, VerifyOtpResponseModel>> otpVerify({required VerifyOtpModel verifyOtpModel}) async{
    try {
      final response =
          await dio.post(ApiEndPoints.verifyOtp, data: verifyOtpModel.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(VerifyOtpResponseModel.fromJson(response.data));
      } else {
        return Left(ErrorMsg(
            message: VerifyOtpResponseModel.fromJson(response.data).message!));
      }
    } on DioException catch (dioError) {
      log('dio error => ${dioError.message.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    } catch (e) {
      log('dio error => ${e.toString()}');
      return Left(ErrorMsg(message: errorMsg));
    }
  }
}
