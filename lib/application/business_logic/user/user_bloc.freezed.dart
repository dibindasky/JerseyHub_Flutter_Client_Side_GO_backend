// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDetailsCopyWith<$Res> {
  factory _$$_GetDetailsCopyWith(
          _$_GetDetails value, $Res Function(_$_GetDetails) then) =
      __$$_GetDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDetailsCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_GetDetails>
    implements _$$_GetDetailsCopyWith<$Res> {
  __$$_GetDetailsCopyWithImpl(
      _$_GetDetails _value, $Res Function(_$_GetDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDetails implements _GetDetails {
  const _$_GetDetails();

  @override
  String toString() {
    return 'UserEvent.getDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return getDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return getDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class _GetDetails implements UserEvent {
  const factory _GetDetails() = _$_GetDetails;
}

/// @nodoc
abstract class _$$_GetAddressCopyWith<$Res> {
  factory _$$_GetAddressCopyWith(
          _$_GetAddress value, $Res Function(_$_GetAddress) then) =
      __$$_GetAddressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetAddressCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_GetAddress>
    implements _$$_GetAddressCopyWith<$Res> {
  __$$_GetAddressCopyWithImpl(
      _$_GetAddress _value, $Res Function(_$_GetAddress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetAddress implements _GetAddress {
  _$_GetAddress();

  @override
  String toString() {
    return 'UserEvent.getAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return getAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return getAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddress implements UserEvent {
  factory _GetAddress() = _$_GetAddress;
}

/// @nodoc
abstract class _$$_AddAddressCopyWith<$Res> {
  factory _$$_AddAddressCopyWith(
          _$_AddAddress value, $Res Function(_$_AddAddress) then) =
      __$$_AddAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({AddAddressModel addAddressModel});
}

/// @nodoc
class __$$_AddAddressCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_AddAddress>
    implements _$$_AddAddressCopyWith<$Res> {
  __$$_AddAddressCopyWithImpl(
      _$_AddAddress _value, $Res Function(_$_AddAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addAddressModel = null,
  }) {
    return _then(_$_AddAddress(
      addAddressModel: null == addAddressModel
          ? _value.addAddressModel
          : addAddressModel // ignore: cast_nullable_to_non_nullable
              as AddAddressModel,
    ));
  }
}

/// @nodoc

class _$_AddAddress implements _AddAddress {
  _$_AddAddress({required this.addAddressModel});

  @override
  final AddAddressModel addAddressModel;

  @override
  String toString() {
    return 'UserEvent.addAddress(addAddressModel: $addAddressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAddress &&
            (identical(other.addAddressModel, addAddressModel) ||
                other.addAddressModel == addAddressModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addAddressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAddressCopyWith<_$_AddAddress> get copyWith =>
      __$$_AddAddressCopyWithImpl<_$_AddAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return addAddress(addAddressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return addAddress?.call(addAddressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(addAddressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddress implements UserEvent {
  factory _AddAddress({required final AddAddressModel addAddressModel}) =
      _$_AddAddress;

  AddAddressModel get addAddressModel;
  @JsonKey(ignore: true)
  _$$_AddAddressCopyWith<_$_AddAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeEmailCopyWith<$Res> {
  factory _$$_ChangeEmailCopyWith(
          _$_ChangeEmail value, $Res Function(_$_ChangeEmail) then) =
      __$$_ChangeEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangeEmail changeEmail});
}

/// @nodoc
class __$$_ChangeEmailCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangeEmail>
    implements _$$_ChangeEmailCopyWith<$Res> {
  __$$_ChangeEmailCopyWithImpl(
      _$_ChangeEmail _value, $Res Function(_$_ChangeEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeEmail = null,
  }) {
    return _then(_$_ChangeEmail(
      changeEmail: null == changeEmail
          ? _value.changeEmail
          : changeEmail // ignore: cast_nullable_to_non_nullable
              as ChangeEmail,
    ));
  }
}

/// @nodoc

class _$_ChangeEmail implements _ChangeEmail {
  _$_ChangeEmail({required this.changeEmail});

  @override
  final ChangeEmail changeEmail;

  @override
  String toString() {
    return 'UserEvent.changeEmail(changeEmail: $changeEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeEmail &&
            (identical(other.changeEmail, changeEmail) ||
                other.changeEmail == changeEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changeEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      __$$_ChangeEmailCopyWithImpl<_$_ChangeEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return changeEmail(this.changeEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return changeEmail?.call(this.changeEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this.changeEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements UserEvent {
  factory _ChangeEmail({required final ChangeEmail changeEmail}) =
      _$_ChangeEmail;

  ChangeEmail get changeEmail;
  @JsonKey(ignore: true)
  _$$_ChangeEmailCopyWith<_$_ChangeEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeNameCopyWith<$Res> {
  factory _$$_ChangeNameCopyWith(
          _$_ChangeName value, $Res Function(_$_ChangeName) then) =
      __$$_ChangeNameCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangeName changeName});
}

/// @nodoc
class __$$_ChangeNameCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangeName>
    implements _$$_ChangeNameCopyWith<$Res> {
  __$$_ChangeNameCopyWithImpl(
      _$_ChangeName _value, $Res Function(_$_ChangeName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeName = null,
  }) {
    return _then(_$_ChangeName(
      changeName: null == changeName
          ? _value.changeName
          : changeName // ignore: cast_nullable_to_non_nullable
              as ChangeName,
    ));
  }
}

/// @nodoc

class _$_ChangeName implements _ChangeName {
  _$_ChangeName({required this.changeName});

  @override
  final ChangeName changeName;

  @override
  String toString() {
    return 'UserEvent.changeName(changeName: $changeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeName &&
            (identical(other.changeName, changeName) ||
                other.changeName == changeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeNameCopyWith<_$_ChangeName> get copyWith =>
      __$$_ChangeNameCopyWithImpl<_$_ChangeName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return changeName(this.changeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return changeName?.call(this.changeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this.changeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements UserEvent {
  factory _ChangeName({required final ChangeName changeName}) = _$_ChangeName;

  ChangeName get changeName;
  @JsonKey(ignore: true)
  _$$_ChangeNameCopyWith<_$_ChangeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePhoneCopyWith<$Res> {
  factory _$$_ChangePhoneCopyWith(
          _$_ChangePhone value, $Res Function(_$_ChangePhone) then) =
      __$$_ChangePhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangePhoneNumber changePhone});
}

/// @nodoc
class __$$_ChangePhoneCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangePhone>
    implements _$$_ChangePhoneCopyWith<$Res> {
  __$$_ChangePhoneCopyWithImpl(
      _$_ChangePhone _value, $Res Function(_$_ChangePhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changePhone = null,
  }) {
    return _then(_$_ChangePhone(
      changePhone: null == changePhone
          ? _value.changePhone
          : changePhone // ignore: cast_nullable_to_non_nullable
              as ChangePhoneNumber,
    ));
  }
}

/// @nodoc

class _$_ChangePhone implements _ChangePhone {
  _$_ChangePhone({required this.changePhone});

  @override
  final ChangePhoneNumber changePhone;

  @override
  String toString() {
    return 'UserEvent.changePhone(changePhone: $changePhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePhone &&
            (identical(other.changePhone, changePhone) ||
                other.changePhone == changePhone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changePhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePhoneCopyWith<_$_ChangePhone> get copyWith =>
      __$$_ChangePhoneCopyWithImpl<_$_ChangePhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return changePhone(this.changePhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return changePhone?.call(this.changePhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this.changePhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePhone != null) {
      return changePhone(this);
    }
    return orElse();
  }
}

abstract class _ChangePhone implements UserEvent {
  factory _ChangePhone({required final ChangePhoneNumber changePhone}) =
      _$_ChangePhone;

  ChangePhoneNumber get changePhone;
  @JsonKey(ignore: true)
  _$$_ChangePhoneCopyWith<_$_ChangePhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({ChangePassword changePassword});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changePassword = null,
  }) {
    return _then(_$_ChangePassword(
      changePassword: null == changePassword
          ? _value.changePassword
          : changePassword // ignore: cast_nullable_to_non_nullable
              as ChangePassword,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  _$_ChangePassword({required this.changePassword});

  @override
  final ChangePassword changePassword;

  @override
  String toString() {
    return 'UserEvent.changePassword(changePassword: $changePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.changePassword, changePassword) ||
                other.changePassword == changePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDetails,
    required TResult Function() getAddress,
    required TResult Function(AddAddressModel addAddressModel) addAddress,
    required TResult Function(ChangeEmail changeEmail) changeEmail,
    required TResult Function(ChangeName changeName) changeName,
    required TResult Function(ChangePhoneNumber changePhone) changePhone,
    required TResult Function(ChangePassword changePassword) changePassword,
  }) {
    return changePassword(this.changePassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDetails,
    TResult? Function()? getAddress,
    TResult? Function(AddAddressModel addAddressModel)? addAddress,
    TResult? Function(ChangeEmail changeEmail)? changeEmail,
    TResult? Function(ChangeName changeName)? changeName,
    TResult? Function(ChangePhoneNumber changePhone)? changePhone,
    TResult? Function(ChangePassword changePassword)? changePassword,
  }) {
    return changePassword?.call(this.changePassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDetails,
    TResult Function()? getAddress,
    TResult Function(AddAddressModel addAddressModel)? addAddress,
    TResult Function(ChangeEmail changeEmail)? changeEmail,
    TResult Function(ChangeName changeName)? changeName,
    TResult Function(ChangePhoneNumber changePhone)? changePhone,
    TResult Function(ChangePassword changePassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this.changePassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetails value) getDetails,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangePhone value) changePhone,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetails value)? getDetails,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangePhone value)? changePhone,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetails value)? getDetails,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangePhone value)? changePhone,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements UserEvent {
  factory _ChangePassword({required final ChangePassword changePassword}) =
      _$_ChangePassword;

  ChangePassword get changePassword;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserDetail? get userDetail => throw _privateConstructorUsedError;
  List<Address?>? get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      UserDetail? userDetail,
      List<Address?>? address});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? userDetail = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      UserDetail? userDetail,
      List<Address?>? address});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? message = freezed,
    Object? userDetail = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userDetail: freezed == userDetail
          ? _value.userDetail
          : userDetail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address?>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      required this.isDone,
      this.message,
      this.userDetail,
      final List<Address?>? address})
      : _address = address;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final UserDetail? userDetail;
  final List<Address?>? _address;
  @override
  List<Address?>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, userDetail: $userDetail, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userDetail, userDetail) ||
                other.userDetail == userDetail) &&
            const DeepCollectionEquality().equals(other._address, _address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isDone,
      message, userDetail, const DeepCollectionEquality().hash(_address));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements UserState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isDone,
      final String? message,
      final UserDetail? userDetail,
      final List<Address?>? address}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  UserDetail? get userDetail;
  @override
  List<Address?>? get address;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
