import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';
import 'package:jerseyhub/domain/models/auth/verify_otp_model/verify_otp_model.dart';
import 'package:jerseyhub/domain/models/auth/verify_otp_response_model/verify_otp_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';
import 'package:jerseyhub/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController poneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordSignInController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> signInKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  final GlobalKey<FormState> phoneKey = GlobalKey<FormState>();
  
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthState.initial()) {

    on<_SignIn>((event, emit) async {
      emit(state.copyWith(signInIsLoading: true));
      final result = await authRepository.signIn(signInModel: event.signInModel);
      result.fold((failure) {
        emit(state.copyWith(
            signInIsLoading: false,
            signInHasError: true,
            message: failure.message));
      }, (signInResponse) async {
        emailController.clear();
        passwordSignInController.clear();
        poneController.clear();
        emit(state.copyWith(
            signInIsLoading: false,
            signInResponseModel: signInResponse,
            isLoggedIn: true,
            signInHasError: false));
        await SharedPref.setToken(
            tokenModel: TokenModel(
                accessToken: signInResponse.data!.token!,
                userId: signInResponse.data!.users!.id!));
        await SharedPref.setLogin();
      });
    });

    on<_SignUP>((event, emit) async {
      emit(AuthState.initial().copyWith(signUpIsLoading: true));
      final result = await authRepository.signUp(signUpModel: event.signUpModel);
      result.fold((failure) {
        emit(state.copyWith(
            signUpIsLoading: false,
            signIUPHasError: true,
            message: failure.message));
      }, (signUpResposnse) async {
        emailController.clear();
        passwordSignInController.clear();
        poneController.clear();
        emit(state.copyWith(
            signUpIsLoading: false, signUpResponseModel: signUpResposnse));
      });
    });

    on<_Obscure>(
        (event, emit) => emit(state.copyWith(isObscure: !state.isObscure)));

    on<_OtpLogin>((event, emit) async {
      emit(AuthState.initial().copyWith(otpIsLoading: true));
      final result =
          await authRepository.otpLogin(phoneNumberModel: event.phoneNumberModel);
      result.fold((errorMssg) {
        emit(state.copyWith(otpIsLoading: false, message: errorMssg.message));
      }, (phoneNumberResponse) {
        emit(state.copyWith(
            otpIsLoading: false,
            phoneNumberOtpResponseModel: phoneNumberResponse));
      });
    });

    on<_VerifyOtp>((event, emit) async {
      emit(AuthState.initial().copyWith(verifyOtpIsLoading: true));
      final result =
          await authRepository.otpVerify(verifyOtpModel: event.verifyOtpModel);
      result.fold((errorMssg) {
        emit(state.copyWith(
            verifyOtpIsLoading: false, message: errorMssg.message));
      }, (verifyOtpResponseModel) async {
        emit(state.copyWith(
            verifyOtpIsLoading: false,
            verifyOtpResponseModel: verifyOtpResponseModel));
        await SharedPref.setToken(
            tokenModel: TokenModel(
                accessToken: verifyOtpResponseModel.data!.token,
                userId: verifyOtpResponseModel.data!.users!.id!));
        await SharedPref.setLogin();
      });
    });

    on<_Log>((event, emit) async {
      final login = await SharedPref.getLogin();
      emit(state.copyWith(isLoggedIn: login));
    });

    on<_SignOut>((event, emit) async {
      await SharedPref.removeLogin();
      emit(AuthState.initial());
    });
  }
}
