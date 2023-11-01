// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getOrderDetail,
    required TResult Function() cancelOrder,
    required TResult Function() returnOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getOrderDetail,
    TResult? Function()? cancelOrder,
    TResult? Function()? returnOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getOrderDetail,
    TResult Function()? cancelOrder,
    TResult Function()? returnOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetail value) getOrderDetail,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetail value)? getOrderDetail,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetail value)? getOrderDetail,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetOrdersCopyWith<$Res> {
  factory _$$_GetOrdersCopyWith(
          _$_GetOrders value, $Res Function(_$_GetOrders) then) =
      __$$_GetOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrdersCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_GetOrders>
    implements _$$_GetOrdersCopyWith<$Res> {
  __$$_GetOrdersCopyWithImpl(
      _$_GetOrders _value, $Res Function(_$_GetOrders) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrders implements _GetOrders {
  const _$_GetOrders();

  @override
  String toString() {
    return 'OrderEvent.getOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getOrderDetail,
    required TResult Function() cancelOrder,
    required TResult Function() returnOrder,
  }) {
    return getOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getOrderDetail,
    TResult? Function()? cancelOrder,
    TResult? Function()? returnOrder,
  }) {
    return getOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getOrderDetail,
    TResult Function()? cancelOrder,
    TResult Function()? returnOrder,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetail value) getOrderDetail,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetail value)? getOrderDetail,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetail value)? getOrderDetail,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class _GetOrders implements OrderEvent {
  const factory _GetOrders() = _$_GetOrders;
}

/// @nodoc
abstract class _$$_GetOrderDetailCopyWith<$Res> {
  factory _$$_GetOrderDetailCopyWith(
          _$_GetOrderDetail value, $Res Function(_$_GetOrderDetail) then) =
      __$$_GetOrderDetailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetOrderDetailCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_GetOrderDetail>
    implements _$$_GetOrderDetailCopyWith<$Res> {
  __$$_GetOrderDetailCopyWithImpl(
      _$_GetOrderDetail _value, $Res Function(_$_GetOrderDetail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetOrderDetail implements _GetOrderDetail {
  const _$_GetOrderDetail();

  @override
  String toString() {
    return 'OrderEvent.getOrderDetail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetOrderDetail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getOrderDetail,
    required TResult Function() cancelOrder,
    required TResult Function() returnOrder,
  }) {
    return getOrderDetail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getOrderDetail,
    TResult? Function()? cancelOrder,
    TResult? Function()? returnOrder,
  }) {
    return getOrderDetail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getOrderDetail,
    TResult Function()? cancelOrder,
    TResult Function()? returnOrder,
    required TResult orElse(),
  }) {
    if (getOrderDetail != null) {
      return getOrderDetail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetail value) getOrderDetail,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
  }) {
    return getOrderDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetail value)? getOrderDetail,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
  }) {
    return getOrderDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetail value)? getOrderDetail,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    required TResult orElse(),
  }) {
    if (getOrderDetail != null) {
      return getOrderDetail(this);
    }
    return orElse();
  }
}

abstract class _GetOrderDetail implements OrderEvent {
  const factory _GetOrderDetail() = _$_GetOrderDetail;
}

/// @nodoc
abstract class _$$_CancelOrderCopyWith<$Res> {
  factory _$$_CancelOrderCopyWith(
          _$_CancelOrder value, $Res Function(_$_CancelOrder) then) =
      __$$_CancelOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_CancelOrder>
    implements _$$_CancelOrderCopyWith<$Res> {
  __$$_CancelOrderCopyWithImpl(
      _$_CancelOrder _value, $Res Function(_$_CancelOrder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelOrder implements _CancelOrder {
  const _$_CancelOrder();

  @override
  String toString() {
    return 'OrderEvent.cancelOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getOrderDetail,
    required TResult Function() cancelOrder,
    required TResult Function() returnOrder,
  }) {
    return cancelOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getOrderDetail,
    TResult? Function()? cancelOrder,
    TResult? Function()? returnOrder,
  }) {
    return cancelOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getOrderDetail,
    TResult Function()? cancelOrder,
    TResult Function()? returnOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetail value) getOrderDetail,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetail value)? getOrderDetail,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetail value)? getOrderDetail,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements OrderEvent {
  const factory _CancelOrder() = _$_CancelOrder;
}

/// @nodoc
abstract class _$$_ReturnOrderCopyWith<$Res> {
  factory _$$_ReturnOrderCopyWith(
          _$_ReturnOrder value, $Res Function(_$_ReturnOrder) then) =
      __$$_ReturnOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReturnOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_ReturnOrder>
    implements _$$_ReturnOrderCopyWith<$Res> {
  __$$_ReturnOrderCopyWithImpl(
      _$_ReturnOrder _value, $Res Function(_$_ReturnOrder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReturnOrder implements _ReturnOrder {
  const _$_ReturnOrder();

  @override
  String toString() {
    return 'OrderEvent.returnOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReturnOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrders,
    required TResult Function() getOrderDetail,
    required TResult Function() cancelOrder,
    required TResult Function() returnOrder,
  }) {
    return returnOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrders,
    TResult? Function()? getOrderDetail,
    TResult? Function()? cancelOrder,
    TResult? Function()? returnOrder,
  }) {
    return returnOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrders,
    TResult Function()? getOrderDetail,
    TResult Function()? cancelOrder,
    TResult Function()? returnOrder,
    required TResult orElse(),
  }) {
    if (returnOrder != null) {
      return returnOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrders value) getOrders,
    required TResult Function(_GetOrderDetail value) getOrderDetail,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_ReturnOrder value) returnOrder,
  }) {
    return returnOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrders value)? getOrders,
    TResult? Function(_GetOrderDetail value)? getOrderDetail,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_ReturnOrder value)? returnOrder,
  }) {
    return returnOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrders value)? getOrders,
    TResult Function(_GetOrderDetail value)? getOrderDetail,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_ReturnOrder value)? returnOrder,
    required TResult orElse(),
  }) {
    if (returnOrder != null) {
      return returnOrder(this);
    }
    return orElse();
  }
}

abstract class _ReturnOrder implements OrderEvent {
  const factory _ReturnOrder() = _$_ReturnOrder;
}

/// @nodoc
mixin _$OrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetOrderResponseModel? get getOrderResponseModel =>
      throw _privateConstructorUsedError;
  GetOrderDetailsResponseModel? get getOrderDetailsResponseModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      String? message,
      GetOrderResponseModel? getOrderResponseModel,
      GetOrderDetailsResponseModel? getOrderDetailsResponseModel});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
    Object? getOrderResponseModel = freezed,
    Object? getOrderDetailsResponseModel = freezed,
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
      getOrderResponseModel: freezed == getOrderResponseModel
          ? _value.getOrderResponseModel
          : getOrderResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOrderResponseModel?,
      getOrderDetailsResponseModel: freezed == getOrderDetailsResponseModel
          ? _value.getOrderDetailsResponseModel
          : getOrderDetailsResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOrderDetailsResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
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
      GetOrderResponseModel? getOrderResponseModel,
      GetOrderDetailsResponseModel? getOrderDetailsResponseModel});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Initial>
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
    Object? getOrderResponseModel = freezed,
    Object? getOrderDetailsResponseModel = freezed,
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
      getOrderResponseModel: freezed == getOrderResponseModel
          ? _value.getOrderResponseModel
          : getOrderResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOrderResponseModel?,
      getOrderDetailsResponseModel: freezed == getOrderDetailsResponseModel
          ? _value.getOrderDetailsResponseModel
          : getOrderDetailsResponseModel // ignore: cast_nullable_to_non_nullable
              as GetOrderDetailsResponseModel?,
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
      this.getOrderResponseModel,
      this.getOrderDetailsResponseModel});

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final String? message;
  @override
  final GetOrderResponseModel? getOrderResponseModel;
  @override
  final GetOrderDetailsResponseModel? getOrderDetailsResponseModel;

  @override
  String toString() {
    return 'OrderState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, message: $message, getOrderResponseModel: $getOrderResponseModel, getOrderDetailsResponseModel: $getOrderDetailsResponseModel)';
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
            (identical(other.getOrderResponseModel, getOrderResponseModel) ||
                other.getOrderResponseModel == getOrderResponseModel) &&
            (identical(other.getOrderDetailsResponseModel,
                    getOrderDetailsResponseModel) ||
                other.getOrderDetailsResponseModel ==
                    getOrderDetailsResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, hasError, isDone,
      message, getOrderResponseModel, getOrderDetailsResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements OrderState {
  const factory _Initial(
          {required final bool isLoading,
          required final bool hasError,
          required final bool isDone,
          final String? message,
          final GetOrderResponseModel? getOrderResponseModel,
          final GetOrderDetailsResponseModel? getOrderDetailsResponseModel}) =
      _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  String? get message;
  @override
  GetOrderResponseModel? get getOrderResponseModel;
  @override
  GetOrderDetailsResponseModel? get getOrderDetailsResponseModel;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
