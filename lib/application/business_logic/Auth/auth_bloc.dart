import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/api/auth/auth.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_model/phone_number_model.dart';
import 'package:jerseyhub/domain/models/auth/phone_number_otp_response_model/phone_number_otp_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_model/sign_in_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_in_response_model/sign_in_response_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_model/sign_up_model.dart';
import 'package:jerseyhub/domain/models/auth/sign_up_response_model/sign_up_response_model.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController poneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordSignInController =
      TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController otp1Controller = TextEditingController();
  final TextEditingController otp2Controller = TextEditingController();
  final TextEditingController otp3Controller = TextEditingController();
  final TextEditingController otp4Controller = TextEditingController();
  final TextEditingController otp5Controller = TextEditingController();
  final TextEditingController otp6Controller = TextEditingController();

  final GlobalKey<FormState> signInKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  final GlobalKey<FormState> phoneKey = GlobalKey<FormState>();

  AuthBloc() : super(AuthState.initial()) {
    final AuthApi authApi = AuthApi();
    on<_SignIn>((event, emit) async {
      emit(state.copyWith(signInIsLoading: true));
      final result = await authApi.signIn(signInModel: event.signInModel);
      result.fold((failure) {
        print('failure storing');
        emit(state.copyWith(
            signInIsLoading: false,
            signInHasError: true,
            message: failure.message));
      }, (signInResponse) async {
        emailController.clear();
        passwordController.clear();
        poneController.clear();
        emit(state.copyWith(
            signInIsLoading: false,
            signInResponseModel: signInResponse,
            isLoggedIn: true,
            signInHasError: false));
        print('before storing');

        await SharedPref.setToken(
            tokenModel: TokenModel(accessToken: signInResponse.data!.token!));
        await SharedPref.setLogin();
      });
    });
    on<_SignUP>((event, emit) async {
      emit(AuthState.initial().copyWith(signUpIsLoading: true));
      final result = await authApi.signUp(signUpModel: event.signUpModel);
      result.fold((failure) {
        print('failure storing');
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
        print('before storing');
        await SharedPref.setToken(
            tokenModel: TokenModel(accessToken: signUpResposnse.data!.token!));
      });
    });
    on<_Obscure>(
        (event, emit) => emit(state.copyWith(isObscure: !state.isObscure)));
    on<_OtpLogin>((event, emit) {
      emit(AuthState.initial().copyWith(otpIsLoading: true));
    });
    on<_VerifyOtp>((event, emit) {
      emit(AuthState.initial().copyWith(otpIsLoading: true));
    });
    on<_Log>((event, emit) async {
      final login = await SharedPref.getLogin();
      print(login);
      emit(state.copyWith(isLoggedIn: login));
    });
    on<_SignOut>((event, emit) async => await SharedPref.removeLogin());
  }
}
