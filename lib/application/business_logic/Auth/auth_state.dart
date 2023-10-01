part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool signInIsLoading,
    required bool signInHasError,
    required bool signUpIsLoading,
    required bool signIUPHasError,
    required bool otpIsLoading,
    required bool otpHasError,
    required bool isObscure,
    required bool isLoggedIn,
    String? message,
    PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
    SignInResponseModel? signInResponseModel,
    SignUpResponseModel? signUpResponseModel,
  }) = _Initial;
  factory AuthState.initial() => const AuthState(
      isObscure: true,
      signInIsLoading: false,
      signInHasError: false,
      signUpIsLoading: false,
      signIUPHasError: false,
      otpIsLoading: false,
      isLoggedIn: false,
      otpHasError: false);
}
