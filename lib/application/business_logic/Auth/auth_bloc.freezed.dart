// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUPCopyWith<$Res> {
  factory _$$_SignUPCopyWith(_$_SignUP value, $Res Function(_$_SignUP) then) =
      __$$_SignUPCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpModel signUpModel});
}

/// @nodoc
class __$$_SignUPCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUP>
    implements _$$_SignUPCopyWith<$Res> {
  __$$_SignUPCopyWithImpl(_$_SignUP _value, $Res Function(_$_SignUP) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = null,
  }) {
    return _then(_$_SignUP(
      signUpModel: null == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as SignUpModel,
    ));
  }
}

/// @nodoc

class _$_SignUP implements _SignUP {
  const _$_SignUP({required this.signUpModel});

  @override
  final SignUpModel signUpModel;

  @override
  String toString() {
    return 'AuthEvent.signUP(signUpModel: $signUpModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUP &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUPCopyWith<_$_SignUP> get copyWith =>
      __$$_SignUPCopyWithImpl<_$_SignUP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return signUP(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return signUP?.call(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(signUpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return signUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return signUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (signUP != null) {
      return signUP(this);
    }
    return orElse();
  }
}

abstract class _SignUP implements AuthEvent {
  const factory _SignUP({required final SignUpModel signUpModel}) = _$_SignUP;

  SignUpModel get signUpModel;
  @JsonKey(ignore: true)
  _$$_SignUPCopyWith<_$_SignUP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignInCopyWith<$Res> {
  factory _$$_SignInCopyWith(_$_SignIn value, $Res Function(_$_SignIn) then) =
      __$$_SignInCopyWithImpl<$Res>;
  @useResult
  $Res call({SignInModel signInModel});
}

/// @nodoc
class __$$_SignInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignIn>
    implements _$$_SignInCopyWith<$Res> {
  __$$_SignInCopyWithImpl(_$_SignIn _value, $Res Function(_$_SignIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInModel = null,
  }) {
    return _then(_$_SignIn(
      signInModel: null == signInModel
          ? _value.signInModel
          : signInModel // ignore: cast_nullable_to_non_nullable
              as SignInModel,
    ));
  }
}

/// @nodoc

class _$_SignIn implements _SignIn {
  const _$_SignIn({required this.signInModel});

  @override
  final SignInModel signInModel;

  @override
  String toString() {
    return 'AuthEvent.signIn(signInModel: $signInModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignIn &&
            (identical(other.signInModel, signInModel) ||
                other.signInModel == signInModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      __$$_SignInCopyWithImpl<_$_SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return signIn(signInModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return signIn?.call(signInModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(signInModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn({required final SignInModel signInModel}) = _$_SignIn;

  SignInModel get signInModel;
  @JsonKey(ignore: true)
  _$$_SignInCopyWith<_$_SignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutCopyWith<$Res> {
  factory _$$_SignOutCopyWith(
          _$_SignOut value, $Res Function(_$_SignOut) then) =
      __$$_SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignOut>
    implements _$$_SignOutCopyWith<$Res> {
  __$$_SignOutCopyWithImpl(_$_SignOut _value, $Res Function(_$_SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignOut implements _SignOut {
  const _$_SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class _SignOut implements AuthEvent {
  const factory _SignOut() = _$_SignOut;
}

/// @nodoc
abstract class _$$_OtpLoginCopyWith<$Res> {
  factory _$$_OtpLoginCopyWith(
          _$_OtpLogin value, $Res Function(_$_OtpLogin) then) =
      __$$_OtpLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneNumberModel phoneNumberModel});
}

/// @nodoc
class __$$_OtpLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OtpLogin>
    implements _$$_OtpLoginCopyWith<$Res> {
  __$$_OtpLoginCopyWithImpl(
      _$_OtpLogin _value, $Res Function(_$_OtpLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberModel = null,
  }) {
    return _then(_$_OtpLogin(
      phoneNumberModel: null == phoneNumberModel
          ? _value.phoneNumberModel
          : phoneNumberModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
    ));
  }
}

/// @nodoc

class _$_OtpLogin implements _OtpLogin {
  const _$_OtpLogin({required this.phoneNumberModel});

  @override
  final PhoneNumberModel phoneNumberModel;

  @override
  String toString() {
    return 'AuthEvent.otpLogin(phoneNumberModel: $phoneNumberModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpLogin &&
            (identical(other.phoneNumberModel, phoneNumberModel) ||
                other.phoneNumberModel == phoneNumberModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpLoginCopyWith<_$_OtpLogin> get copyWith =>
      __$$_OtpLoginCopyWithImpl<_$_OtpLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return otpLogin(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return otpLogin?.call(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(phoneNumberModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return otpLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return otpLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (otpLogin != null) {
      return otpLogin(this);
    }
    return orElse();
  }
}

abstract class _OtpLogin implements AuthEvent {
  const factory _OtpLogin({required final PhoneNumberModel phoneNumberModel}) =
      _$_OtpLogin;

  PhoneNumberModel get phoneNumberModel;
  @JsonKey(ignore: true)
  _$$_OtpLoginCopyWith<_$_OtpLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResendOtpCopyWith<$Res> {
  factory _$$_ResendOtpCopyWith(
          _$_ResendOtp value, $Res Function(_$_ResendOtp) then) =
      __$$_ResendOtpCopyWithImpl<$Res>;
  @useResult
  $Res call({PhoneNumberModel phoneNumberModel});
}

/// @nodoc
class __$$_ResendOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResendOtp>
    implements _$$_ResendOtpCopyWith<$Res> {
  __$$_ResendOtpCopyWithImpl(
      _$_ResendOtp _value, $Res Function(_$_ResendOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumberModel = null,
  }) {
    return _then(_$_ResendOtp(
      phoneNumberModel: null == phoneNumberModel
          ? _value.phoneNumberModel
          : phoneNumberModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberModel,
    ));
  }
}

/// @nodoc

class _$_ResendOtp implements _ResendOtp {
  const _$_ResendOtp({required this.phoneNumberModel});

  @override
  final PhoneNumberModel phoneNumberModel;

  @override
  String toString() {
    return 'AuthEvent.resendOtp(phoneNumberModel: $phoneNumberModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResendOtp &&
            (identical(other.phoneNumberModel, phoneNumberModel) ||
                other.phoneNumberModel == phoneNumberModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumberModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendOtpCopyWith<_$_ResendOtp> get copyWith =>
      __$$_ResendOtpCopyWithImpl<_$_ResendOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return resendOtp(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return resendOtp?.call(phoneNumberModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(phoneNumberModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements AuthEvent {
  const factory _ResendOtp({required final PhoneNumberModel phoneNumberModel}) =
      _$_ResendOtp;

  PhoneNumberModel get phoneNumberModel;
  @JsonKey(ignore: true)
  _$$_ResendOtpCopyWith<_$_ResendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyOtpCopyWith<$Res> {
  factory _$$_VerifyOtpCopyWith(
          _$_VerifyOtp value, $Res Function(_$_VerifyOtp) then) =
      __$$_VerifyOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_VerifyOtp>
    implements _$$_VerifyOtpCopyWith<$Res> {
  __$$_VerifyOtpCopyWithImpl(
      _$_VerifyOtp _value, $Res Function(_$_VerifyOtp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp();

  @override
  String toString() {
    return 'AuthEvent.verifyOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return verifyOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return verifyOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp() = _$_VerifyOtp;
}

/// @nodoc
abstract class _$$_ObscureCopyWith<$Res> {
  factory _$$_ObscureCopyWith(
          _$_Obscure value, $Res Function(_$_Obscure) then) =
      __$$_ObscureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscureCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Obscure>
    implements _$$_ObscureCopyWith<$Res> {
  __$$_ObscureCopyWithImpl(_$_Obscure _value, $Res Function(_$_Obscure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Obscure implements _Obscure {
  const _$_Obscure();

  @override
  String toString() {
    return 'AuthEvent.obscure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Obscure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return obscure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return obscure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (obscure != null) {
      return obscure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return obscure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return obscure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (obscure != null) {
      return obscure(this);
    }
    return orElse();
  }
}

abstract class _Obscure implements AuthEvent {
  const factory _Obscure() = _$_Obscure;
}

/// @nodoc
abstract class _$$_LogCopyWith<$Res> {
  factory _$$_LogCopyWith(_$_Log value, $Res Function(_$_Log) then) =
      __$$_LogCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_Log>
    implements _$$_LogCopyWith<$Res> {
  __$$_LogCopyWithImpl(_$_Log _value, $Res Function(_$_Log) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Log implements _Log {
  const _$_Log();

  @override
  String toString() {
    return 'AuthEvent.log()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Log);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SignUpModel signUpModel) signUP,
    required TResult Function(SignInModel signInModel) signIn,
    required TResult Function() signOut,
    required TResult Function(PhoneNumberModel phoneNumberModel) otpLogin,
    required TResult Function(PhoneNumberModel phoneNumberModel) resendOtp,
    required TResult Function() verifyOtp,
    required TResult Function() obscure,
    required TResult Function() log,
  }) {
    return log();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SignUpModel signUpModel)? signUP,
    TResult? Function(SignInModel signInModel)? signIn,
    TResult? Function()? signOut,
    TResult? Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult? Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult? Function()? verifyOtp,
    TResult? Function()? obscure,
    TResult? Function()? log,
  }) {
    return log?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SignUpModel signUpModel)? signUP,
    TResult Function(SignInModel signInModel)? signIn,
    TResult Function()? signOut,
    TResult Function(PhoneNumberModel phoneNumberModel)? otpLogin,
    TResult Function(PhoneNumberModel phoneNumberModel)? resendOtp,
    TResult Function()? verifyOtp,
    TResult Function()? obscure,
    TResult Function()? log,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUP value) signUP,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignOut value) signOut,
    required TResult Function(_OtpLogin value) otpLogin,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Obscure value) obscure,
    required TResult Function(_Log value) log,
  }) {
    return log(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUP value)? signUP,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignOut value)? signOut,
    TResult? Function(_OtpLogin value)? otpLogin,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Obscure value)? obscure,
    TResult? Function(_Log value)? log,
  }) {
    return log?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUP value)? signUP,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignOut value)? signOut,
    TResult Function(_OtpLogin value)? otpLogin,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Obscure value)? obscure,
    TResult Function(_Log value)? log,
    required TResult orElse(),
  }) {
    if (log != null) {
      return log(this);
    }
    return orElse();
  }
}

abstract class _Log implements AuthEvent {
  const factory _Log() = _$_Log;
}

/// @nodoc
mixin _$AuthState {
  bool get signInIsLoading => throw _privateConstructorUsedError;
  bool get signInHasError => throw _privateConstructorUsedError;
  bool get signUpIsLoading => throw _privateConstructorUsedError;
  bool get signIUPHasError => throw _privateConstructorUsedError;
  bool get otpIsLoading => throw _privateConstructorUsedError;
  bool get otpHasError => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PhoneNumberOtpResponseModel? get phoneNumberOtpResponseModel =>
      throw _privateConstructorUsedError;
  SignInResponseModel? get signInResponseModel =>
      throw _privateConstructorUsedError;
  SignUpResponseModel? get signUpResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool signInIsLoading,
      bool signInHasError,
      bool signUpIsLoading,
      bool signIUPHasError,
      bool otpIsLoading,
      bool otpHasError,
      bool isObscure,
      bool isLoggedIn,
      String? message,
      PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
      SignInResponseModel? signInResponseModel,
      SignUpResponseModel? signUpResponseModel});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInIsLoading = null,
    Object? signInHasError = null,
    Object? signUpIsLoading = null,
    Object? signIUPHasError = null,
    Object? otpIsLoading = null,
    Object? otpHasError = null,
    Object? isObscure = null,
    Object? isLoggedIn = null,
    Object? message = freezed,
    Object? phoneNumberOtpResponseModel = freezed,
    Object? signInResponseModel = freezed,
    Object? signUpResponseModel = freezed,
  }) {
    return _then(_value.copyWith(
      signInIsLoading: null == signInIsLoading
          ? _value.signInIsLoading
          : signInIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInHasError: null == signInHasError
          ? _value.signInHasError
          : signInHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signIUPHasError: null == signIUPHasError
          ? _value.signIUPHasError
          : signIUPHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      otpIsLoading: null == otpIsLoading
          ? _value.otpIsLoading
          : otpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpHasError: null == otpHasError
          ? _value.otpHasError
          : otpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberOtpResponseModel: freezed == phoneNumberOtpResponseModel
          ? _value.phoneNumberOtpResponseModel
          : phoneNumberOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberOtpResponseModel?,
      signInResponseModel: freezed == signInResponseModel
          ? _value.signInResponseModel
          : signInResponseModel // ignore: cast_nullable_to_non_nullable
              as SignInResponseModel?,
      signUpResponseModel: freezed == signUpResponseModel
          ? _value.signUpResponseModel
          : signUpResponseModel // ignore: cast_nullable_to_non_nullable
              as SignUpResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool signInIsLoading,
      bool signInHasError,
      bool signUpIsLoading,
      bool signIUPHasError,
      bool otpIsLoading,
      bool otpHasError,
      bool isObscure,
      bool isLoggedIn,
      String? message,
      PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
      SignInResponseModel? signInResponseModel,
      SignUpResponseModel? signUpResponseModel});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInIsLoading = null,
    Object? signInHasError = null,
    Object? signUpIsLoading = null,
    Object? signIUPHasError = null,
    Object? otpIsLoading = null,
    Object? otpHasError = null,
    Object? isObscure = null,
    Object? isLoggedIn = null,
    Object? message = freezed,
    Object? phoneNumberOtpResponseModel = freezed,
    Object? signInResponseModel = freezed,
    Object? signUpResponseModel = freezed,
  }) {
    return _then(_$_Initial(
      signInIsLoading: null == signInIsLoading
          ? _value.signInIsLoading
          : signInIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signInHasError: null == signInHasError
          ? _value.signInHasError
          : signInHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpIsLoading: null == signUpIsLoading
          ? _value.signUpIsLoading
          : signUpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      signIUPHasError: null == signIUPHasError
          ? _value.signIUPHasError
          : signIUPHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      otpIsLoading: null == otpIsLoading
          ? _value.otpIsLoading
          : otpIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpHasError: null == otpHasError
          ? _value.otpHasError
          : otpHasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumberOtpResponseModel: freezed == phoneNumberOtpResponseModel
          ? _value.phoneNumberOtpResponseModel
          : phoneNumberOtpResponseModel // ignore: cast_nullable_to_non_nullable
              as PhoneNumberOtpResponseModel?,
      signInResponseModel: freezed == signInResponseModel
          ? _value.signInResponseModel
          : signInResponseModel // ignore: cast_nullable_to_non_nullable
              as SignInResponseModel?,
      signUpResponseModel: freezed == signUpResponseModel
          ? _value.signUpResponseModel
          : signUpResponseModel // ignore: cast_nullable_to_non_nullable
              as SignUpResponseModel?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.signInIsLoading,
      required this.signInHasError,
      required this.signUpIsLoading,
      required this.signIUPHasError,
      required this.otpIsLoading,
      required this.otpHasError,
      required this.isObscure,
      required this.isLoggedIn,
      this.message,
      this.phoneNumberOtpResponseModel,
      this.signInResponseModel,
      this.signUpResponseModel});

  @override
  final bool signInIsLoading;
  @override
  final bool signInHasError;
  @override
  final bool signUpIsLoading;
  @override
  final bool signIUPHasError;
  @override
  final bool otpIsLoading;
  @override
  final bool otpHasError;
  @override
  final bool isObscure;
  @override
  final bool isLoggedIn;
  @override
  final String? message;
  @override
  final PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel;
  @override
  final SignInResponseModel? signInResponseModel;
  @override
  final SignUpResponseModel? signUpResponseModel;

  @override
  String toString() {
    return 'AuthState(signInIsLoading: $signInIsLoading, signInHasError: $signInHasError, signUpIsLoading: $signUpIsLoading, signIUPHasError: $signIUPHasError, otpIsLoading: $otpIsLoading, otpHasError: $otpHasError, isObscure: $isObscure, isLoggedIn: $isLoggedIn, message: $message, phoneNumberOtpResponseModel: $phoneNumberOtpResponseModel, signInResponseModel: $signInResponseModel, signUpResponseModel: $signUpResponseModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.signInIsLoading, signInIsLoading) ||
                other.signInIsLoading == signInIsLoading) &&
            (identical(other.signInHasError, signInHasError) ||
                other.signInHasError == signInHasError) &&
            (identical(other.signUpIsLoading, signUpIsLoading) ||
                other.signUpIsLoading == signUpIsLoading) &&
            (identical(other.signIUPHasError, signIUPHasError) ||
                other.signIUPHasError == signIUPHasError) &&
            (identical(other.otpIsLoading, otpIsLoading) ||
                other.otpIsLoading == otpIsLoading) &&
            (identical(other.otpHasError, otpHasError) ||
                other.otpHasError == otpHasError) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phoneNumberOtpResponseModel,
                    phoneNumberOtpResponseModel) ||
                other.phoneNumberOtpResponseModel ==
                    phoneNumberOtpResponseModel) &&
            (identical(other.signInResponseModel, signInResponseModel) ||
                other.signInResponseModel == signInResponseModel) &&
            (identical(other.signUpResponseModel, signUpResponseModel) ||
                other.signUpResponseModel == signUpResponseModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      signInIsLoading,
      signInHasError,
      signUpIsLoading,
      signIUPHasError,
      otpIsLoading,
      otpHasError,
      isObscure,
      isLoggedIn,
      message,
      phoneNumberOtpResponseModel,
      signInResponseModel,
      signUpResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool signInIsLoading,
      required final bool signInHasError,
      required final bool signUpIsLoading,
      required final bool signIUPHasError,
      required final bool otpIsLoading,
      required final bool otpHasError,
      required final bool isObscure,
      required final bool isLoggedIn,
      final String? message,
      final PhoneNumberOtpResponseModel? phoneNumberOtpResponseModel,
      final SignInResponseModel? signInResponseModel,
      final SignUpResponseModel? signUpResponseModel}) = _$_Initial;

  @override
  bool get signInIsLoading;
  @override
  bool get signInHasError;
  @override
  bool get signUpIsLoading;
  @override
  bool get signIUPHasError;
  @override
  bool get otpIsLoading;
  @override
  bool get otpHasError;
  @override
  bool get isObscure;
  @override
  bool get isLoggedIn;
  @override
  String? get message;
  @override
  PhoneNumberOtpResponseModel? get phoneNumberOtpResponseModel;
  @override
  SignInResponseModel? get signInResponseModel;
  @override
  SignUpResponseModel? get signUpResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
