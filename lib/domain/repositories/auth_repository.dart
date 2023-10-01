import 'package:dartz/dartz.dart';
import 'package:jerseyhub/domain/core/failure/error_msg.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';

abstract class AuthRepository {
  Future<Either<ErrorMsg, SignInResponseModel>> signIn(
      {required SignInModel signInModel});
  Future<Either<ErrorMsg, SignUpResponseModel>> signUp(
      {required SignUpModel signUpModel});
  Future<Either<ErrorMsg, PhoneNumberOtpResponseModel>> otpLogin(
      {required PhoneNumberModel phoneNumberModel});
  // Future<Either<Failure, >> otpVerify();
}
