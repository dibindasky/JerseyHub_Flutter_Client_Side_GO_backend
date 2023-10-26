// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListEventCopyWith<$Res> {
  factory $WishListEventCopyWith(
          WishListEvent value, $Res Function(WishListEvent) then) =
      _$WishListEventCopyWithImpl<$Res, WishListEvent>;
}

/// @nodoc
class _$WishListEventCopyWithImpl<$Res, $Val extends WishListEvent>
    implements $WishListEventCopyWith<$Res> {
  _$WishListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetWishListCopyWith<$Res> {
  factory _$$_GetWishListCopyWith(
          _$_GetWishList value, $Res Function(_$_GetWishList) then) =
      __$$_GetWishListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetWishListCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$_GetWishList>
    implements _$$_GetWishListCopyWith<$Res> {
  __$$_GetWishListCopyWithImpl(
      _$_GetWishList _value, $Res Function(_$_GetWishList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetWishList implements _GetWishList {
  const _$_GetWishList();

  @override
  String toString() {
    return 'WishListEvent.getWishList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetWishList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) {
    return getWishList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) {
    return getWishList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) {
    return getWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) {
    return getWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList(this);
    }
    return orElse();
  }
}

abstract class _GetWishList implements WishListEvent {
  const factory _GetWishList() = _$_GetWishList;
}

/// @nodoc
abstract class _$$_AddToWishListCopyWith<$Res> {
  factory _$$_AddToWishListCopyWith(
          _$_AddToWishList value, $Res Function(_$_AddToWishList) then) =
      __$$_AddToWishListCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_AddToWishListCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$_AddToWishList>
    implements _$$_AddToWishListCopyWith<$Res> {
  __$$_AddToWishListCopyWithImpl(
      _$_AddToWishList _value, $Res Function(_$_AddToWishList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_AddToWishList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddToWishList implements _AddToWishList {
  const _$_AddToWishList({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WishListEvent.addToWishList(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToWishList &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToWishListCopyWith<_$_AddToWishList> get copyWith =>
      __$$_AddToWishListCopyWithImpl<_$_AddToWishList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) {
    return addToWishList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) {
    return addToWishList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) {
    return addToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) {
    return addToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddToWishList implements WishListEvent {
  const factory _AddToWishList({required final int id}) = _$_AddToWishList;

  int get id;
  @JsonKey(ignore: true)
  _$$_AddToWishListCopyWith<_$_AddToWishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromWishListCopyWith<$Res> {
  factory _$$_RemoveFromWishListCopyWith(_$_RemoveFromWishList value,
          $Res Function(_$_RemoveFromWishList) then) =
      __$$_RemoveFromWishListCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_RemoveFromWishListCopyWithImpl<$Res>
    extends _$WishListEventCopyWithImpl<$Res, _$_RemoveFromWishList>
    implements _$$_RemoveFromWishListCopyWith<$Res> {
  __$$_RemoveFromWishListCopyWithImpl(
      _$_RemoveFromWishList _value, $Res Function(_$_RemoveFromWishList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RemoveFromWishList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveFromWishList implements _RemoveFromWishList {
  const _$_RemoveFromWishList({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'WishListEvent.removeFromWishList(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromWishList &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveFromWishListCopyWith<_$_RemoveFromWishList> get copyWith =>
      __$$_RemoveFromWishListCopyWithImpl<_$_RemoveFromWishList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWishList,
    required TResult Function(int id) addToWishList,
    required TResult Function(int id) removeFromWishList,
  }) {
    return removeFromWishList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWishList,
    TResult? Function(int id)? addToWishList,
    TResult? Function(int id)? removeFromWishList,
  }) {
    return removeFromWishList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWishList,
    TResult Function(int id)? addToWishList,
    TResult Function(int id)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (removeFromWishList != null) {
      return removeFromWishList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWishList value) getWishList,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
  }) {
    return removeFromWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWishList value)? getWishList,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
  }) {
    return removeFromWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWishList value)? getWishList,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    required TResult orElse(),
  }) {
    if (removeFromWishList != null) {
      return removeFromWishList(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromWishList implements WishListEvent {
  const factory _RemoveFromWishList({required final int id}) =
      _$_RemoveFromWishList;

  int get id;
  @JsonKey(ignore: true)
  _$$_RemoveFromWishListCopyWith<_$_RemoveFromWishList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishListState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetWishlistResponseModel? get getWishlistResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishListStateCopyWith<WishListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListStateCopyWith<$Res> {
  factory $WishListStateCopyWith(
          WishListState value, $Res Function(WishListState) then) =
      _$WishListStateCopyWithImpl<$Res, WishListState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      GetWishlistResponseModel? getWishlistResponseModel});
}

/// @nodoc
class _$WishListStateCopyWithImpl<$Res, $Val extends WishListState>
    implements $WishListStateCopyWith<$Res> {
  _$WishListStateCopyWithImpl(this._value, this._then);

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
    Object? getWishlistResponseModel = freezed,
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
      getWishlistResponseModel: freezed == getWishlistResponseModel
          ? _value.getWishlistResponseModel
          : getWishlistResponseModel // ignore: cast_nullable_to_non_nullable
              as GetWishlistResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $WishListStateCopyWith<$Res> {
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
      GetWishlistResponseModel? getWishlistResponseModel});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$WishListStateCopyWithImpl<$Res, _$_Initial>
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
    Object? getWishlistResponseModel = freezed,
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
      getWishlistResponseModel: freezed == getWishlistResponseModel
          ? _value.getWishlistResponseModel
          : getWishlistResponseModel // ignore: cast_nullable_to_non_nullable
              as GetWishlistResponseModel?,
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
      this.getWishlistResponseModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final GetWishlistResponseModel? getWishlistResponseModel;

  @override
  String toString() {
    return 'WishListState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, getWishlistResponseModel: $getWishlistResponseModel)';
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
            (identical(
                    other.getWishlistResponseModel, getWishlistResponseModel) ||
                other.getWishlistResponseModel == getWishlistResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isDone,
      message, getWishlistResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements WishListState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isDone,
      final String? message,
      final GetWishlistResponseModel? getWishlistResponseModel}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  GetWishlistResponseModel? get getWishlistResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
