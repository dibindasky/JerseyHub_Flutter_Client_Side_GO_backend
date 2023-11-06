// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategory,
    required TResult Function() getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategory,
    TResult? Function()? getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategory,
    TResult Function()? getBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_GetBanner value) getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_GetBanner value)? getBanner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_GetBanner value)? getBanner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCategoryCopyWith<$Res> {
  factory _$$_GetCategoryCopyWith(
          _$_GetCategory value, $Res Function(_$_GetCategory) then) =
      __$$_GetCategoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCategoryCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetCategory>
    implements _$$_GetCategoryCopyWith<$Res> {
  __$$_GetCategoryCopyWithImpl(
      _$_GetCategory _value, $Res Function(_$_GetCategory) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCategory implements _GetCategory {
  const _$_GetCategory();

  @override
  String toString() {
    return 'HomeEvent.getCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategory,
    required TResult Function() getBanner,
  }) {
    return getCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategory,
    TResult? Function()? getBanner,
  }) {
    return getCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategory,
    TResult Function()? getBanner,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_GetBanner value) getBanner,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_GetBanner value)? getBanner,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_GetBanner value)? getBanner,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class _GetCategory implements HomeEvent {
  const factory _GetCategory() = _$_GetCategory;
}

/// @nodoc
abstract class _$$_GetBannerCopyWith<$Res> {
  factory _$$_GetBannerCopyWith(
          _$_GetBanner value, $Res Function(_$_GetBanner) then) =
      __$$_GetBannerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetBannerCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetBanner>
    implements _$$_GetBannerCopyWith<$Res> {
  __$$_GetBannerCopyWithImpl(
      _$_GetBanner _value, $Res Function(_$_GetBanner) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetBanner implements _GetBanner {
  const _$_GetBanner();

  @override
  String toString() {
    return 'HomeEvent.getBanner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetBanner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategory,
    required TResult Function() getBanner,
  }) {
    return getBanner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategory,
    TResult? Function()? getBanner,
  }) {
    return getBanner?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategory,
    TResult Function()? getBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategory value) getCategory,
    required TResult Function(_GetBanner value) getBanner,
  }) {
    return getBanner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategory value)? getCategory,
    TResult? Function(_GetBanner value)? getBanner,
  }) {
    return getBanner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategory value)? getCategory,
    TResult Function(_GetBanner value)? getBanner,
    required TResult orElse(),
  }) {
    if (getBanner != null) {
      return getBanner(this);
    }
    return orElse();
  }
}

abstract class _GetBanner implements HomeEvent {
  const factory _GetBanner() = _$_GetBanner;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get expired => throw _privateConstructorUsedError;
  List<Banner>? get banners => throw _privateConstructorUsedError;
  List<Category>? get categoeries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      bool? expired,
      List<Banner>? banners,
      List<Category>? categoeries});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? expired = freezed,
    Object? banners = freezed,
    Object? categoeries = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
      categoeries: freezed == categoeries
          ? _value.categoeries
          : categoeries // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String? message,
      bool? expired,
      List<Banner>? banners,
      List<Category>? categoeries});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? message = freezed,
    Object? expired = freezed,
    Object? banners = freezed,
    Object? categoeries = freezed,
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
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expired: freezed == expired
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banner>?,
      categoeries: freezed == categoeries
          ? _value._categoeries
          : categoeries // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      this.message,
      this.expired,
      final List<Banner>? banners,
      final List<Category>? categoeries})
      : _banners = banners,
        _categoeries = categoeries;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String? message;
  @override
  final bool? expired;
  final List<Banner>? _banners;
  @override
  List<Banner>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _categoeries;
  @override
  List<Category>? get categoeries {
    final value = _categoeries;
    if (value == null) return null;
    if (_categoeries is EqualUnmodifiableListView) return _categoeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, hasError: $hasError, message: $message, expired: $expired, banners: $banners, categoeries: $categoeries)';
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
            (identical(other.message, message) || other.message == message) &&
            (identical(other.expired, expired) || other.expired == expired) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality()
                .equals(other._categoeries, _categoeries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      message,
      expired,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_categoeries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      final String? message,
      final bool? expired,
      final List<Banner>? banners,
      final List<Category>? categoeries}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get message;
  @override
  bool? get expired;
  @override
  List<Banner>? get banners;
  @override
  List<Category>? get categoeries;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
