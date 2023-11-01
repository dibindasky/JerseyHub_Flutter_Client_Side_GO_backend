// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCartCopyWith<$Res> {
  factory _$$_GetCartCopyWith(
          _$_GetCart value, $Res Function(_$_GetCart) then) =
      __$$_GetCartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_GetCart>
    implements _$$_GetCartCopyWith<$Res> {
  __$$_GetCartCopyWithImpl(_$_GetCart _value, $Res Function(_$_GetCart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCart implements _GetCart {
  const _$_GetCart();

  @override
  String toString() {
    return 'CartEvent.getCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return getCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return getCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class _GetCart implements CartEvent {
  const factory _GetCart() = _$_GetCart;
}

/// @nodoc
abstract class _$$_AddToCartCopyWith<$Res> {
  factory _$$_AddToCartCopyWith(
          _$_AddToCart value, $Res Function(_$_AddToCart) then) =
      __$$_AddToCartCopyWithImpl<$Res>;
  @useResult
  $Res call({AddToCartModel addToCartModel});
}

/// @nodoc
class __$$_AddToCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_AddToCart>
    implements _$$_AddToCartCopyWith<$Res> {
  __$$_AddToCartCopyWithImpl(
      _$_AddToCart _value, $Res Function(_$_AddToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addToCartModel = null,
  }) {
    return _then(_$_AddToCart(
      addToCartModel: null == addToCartModel
          ? _value.addToCartModel
          : addToCartModel // ignore: cast_nullable_to_non_nullable
              as AddToCartModel,
    ));
  }
}

/// @nodoc

class _$_AddToCart implements _AddToCart {
  const _$_AddToCart({required this.addToCartModel});

  @override
  final AddToCartModel addToCartModel;

  @override
  String toString() {
    return 'CartEvent.addToCart(addToCartModel: $addToCartModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCart &&
            (identical(other.addToCartModel, addToCartModel) ||
                other.addToCartModel == addToCartModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addToCartModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      __$$_AddToCartCopyWithImpl<_$_AddToCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return addToCart(addToCartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return addToCart?.call(addToCartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(addToCartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart({required final AddToCartModel addToCartModel}) =
      _$_AddToCart;

  AddToCartModel get addToCartModel;
  @JsonKey(ignore: true)
  _$$_AddToCartCopyWith<_$_AddToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFromCartCopyWith<$Res> {
  factory _$$_RemoveFromCartCopyWith(
          _$_RemoveFromCart value, $Res Function(_$_RemoveFromCart) then) =
      __$$_RemoveFromCartCopyWithImpl<$Res>;
  @useResult
  $Res call({int inventoryId});
}

/// @nodoc
class __$$_RemoveFromCartCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_RemoveFromCart>
    implements _$$_RemoveFromCartCopyWith<$Res> {
  __$$_RemoveFromCartCopyWithImpl(
      _$_RemoveFromCart _value, $Res Function(_$_RemoveFromCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryId = null,
  }) {
    return _then(_$_RemoveFromCart(
      inventoryId: null == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveFromCart implements _RemoveFromCart {
  const _$_RemoveFromCart({required this.inventoryId});

  @override
  final int inventoryId;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(inventoryId: $inventoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFromCart &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inventoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveFromCartCopyWith<_$_RemoveFromCart> get copyWith =>
      __$$_RemoveFromCartCopyWithImpl<_$_RemoveFromCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return removeFromCart(inventoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return removeFromCart?.call(inventoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(inventoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartEvent {
  const factory _RemoveFromCart({required final int inventoryId}) =
      _$_RemoveFromCart;

  int get inventoryId;
  @JsonKey(ignore: true)
  _$$_RemoveFromCartCopyWith<_$_RemoveFromCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateQuantityPlusCopyWith<$Res> {
  factory _$$_UpdateQuantityPlusCopyWith(_$_UpdateQuantityPlus value,
          $Res Function(_$_UpdateQuantityPlus) then) =
      __$$_UpdateQuantityPlusCopyWithImpl<$Res>;
  @useResult
  $Res call({int inventoryId});
}

/// @nodoc
class __$$_UpdateQuantityPlusCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_UpdateQuantityPlus>
    implements _$$_UpdateQuantityPlusCopyWith<$Res> {
  __$$_UpdateQuantityPlusCopyWithImpl(
      _$_UpdateQuantityPlus _value, $Res Function(_$_UpdateQuantityPlus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryId = null,
  }) {
    return _then(_$_UpdateQuantityPlus(
      inventoryId: null == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateQuantityPlus implements _UpdateQuantityPlus {
  const _$_UpdateQuantityPlus({required this.inventoryId});

  @override
  final int inventoryId;

  @override
  String toString() {
    return 'CartEvent.updateQuantityPlus(inventoryId: $inventoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateQuantityPlus &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inventoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateQuantityPlusCopyWith<_$_UpdateQuantityPlus> get copyWith =>
      __$$_UpdateQuantityPlusCopyWithImpl<_$_UpdateQuantityPlus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return updateQuantityPlus(inventoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return updateQuantityPlus?.call(inventoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (updateQuantityPlus != null) {
      return updateQuantityPlus(inventoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return updateQuantityPlus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return updateQuantityPlus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (updateQuantityPlus != null) {
      return updateQuantityPlus(this);
    }
    return orElse();
  }
}

abstract class _UpdateQuantityPlus implements CartEvent {
  const factory _UpdateQuantityPlus({required final int inventoryId}) =
      _$_UpdateQuantityPlus;

  int get inventoryId;
  @JsonKey(ignore: true)
  _$$_UpdateQuantityPlusCopyWith<_$_UpdateQuantityPlus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateQuantityMinusCopyWith<$Res> {
  factory _$$_UpdateQuantityMinusCopyWith(_$_UpdateQuantityMinus value,
          $Res Function(_$_UpdateQuantityMinus) then) =
      __$$_UpdateQuantityMinusCopyWithImpl<$Res>;
  @useResult
  $Res call({int inventoryId});
}

/// @nodoc
class __$$_UpdateQuantityMinusCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_UpdateQuantityMinus>
    implements _$$_UpdateQuantityMinusCopyWith<$Res> {
  __$$_UpdateQuantityMinusCopyWithImpl(_$_UpdateQuantityMinus _value,
      $Res Function(_$_UpdateQuantityMinus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inventoryId = null,
  }) {
    return _then(_$_UpdateQuantityMinus(
      inventoryId: null == inventoryId
          ? _value.inventoryId
          : inventoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UpdateQuantityMinus implements _UpdateQuantityMinus {
  const _$_UpdateQuantityMinus({required this.inventoryId});

  @override
  final int inventoryId;

  @override
  String toString() {
    return 'CartEvent.updateQuantityMinus(inventoryId: $inventoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateQuantityMinus &&
            (identical(other.inventoryId, inventoryId) ||
                other.inventoryId == inventoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inventoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateQuantityMinusCopyWith<_$_UpdateQuantityMinus> get copyWith =>
      __$$_UpdateQuantityMinusCopyWithImpl<_$_UpdateQuantityMinus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return updateQuantityMinus(inventoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return updateQuantityMinus?.call(inventoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (updateQuantityMinus != null) {
      return updateQuantityMinus(inventoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return updateQuantityMinus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return updateQuantityMinus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (updateQuantityMinus != null) {
      return updateQuantityMinus(this);
    }
    return orElse();
  }
}

abstract class _UpdateQuantityMinus implements CartEvent {
  const factory _UpdateQuantityMinus({required final int inventoryId}) =
      _$_UpdateQuantityMinus;

  int get inventoryId;
  @JsonKey(ignore: true)
  _$$_UpdateQuantityMinusCopyWith<_$_UpdateQuantityMinus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCouponCopyWith<$Res> {
  factory _$$_GetCouponCopyWith(
          _$_GetCoupon value, $Res Function(_$_GetCoupon) then) =
      __$$_GetCouponCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCouponCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_GetCoupon>
    implements _$$_GetCouponCopyWith<$Res> {
  __$$_GetCouponCopyWithImpl(
      _$_GetCoupon _value, $Res Function(_$_GetCoupon) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCoupon implements _GetCoupon {
  const _$_GetCoupon();

  @override
  String toString() {
    return 'CartEvent.getCoupon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCoupon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return getCoupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return getCoupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (getCoupon != null) {
      return getCoupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return getCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return getCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (getCoupon != null) {
      return getCoupon(this);
    }
    return orElse();
  }
}

abstract class _GetCoupon implements CartEvent {
  const factory _GetCoupon() = _$_GetCoupon;
}

/// @nodoc
abstract class _$$_ChooseCouponCopyWith<$Res> {
  factory _$$_ChooseCouponCopyWith(
          _$_ChooseCoupon value, $Res Function(_$_ChooseCoupon) then) =
      __$$_ChooseCouponCopyWithImpl<$Res>;
  @useResult
  $Res call({Coupon coupon});
}

/// @nodoc
class __$$_ChooseCouponCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_ChooseCoupon>
    implements _$$_ChooseCouponCopyWith<$Res> {
  __$$_ChooseCouponCopyWithImpl(
      _$_ChooseCoupon _value, $Res Function(_$_ChooseCoupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupon = null,
  }) {
    return _then(_$_ChooseCoupon(
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as Coupon,
    ));
  }
}

/// @nodoc

class _$_ChooseCoupon implements _ChooseCoupon {
  const _$_ChooseCoupon({required this.coupon});

  @override
  final Coupon coupon;

  @override
  String toString() {
    return 'CartEvent.chooseCoupon(coupon: $coupon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseCoupon &&
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChooseCouponCopyWith<_$_ChooseCoupon> get copyWith =>
      __$$_ChooseCouponCopyWithImpl<_$_ChooseCoupon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCart,
    required TResult Function(AddToCartModel addToCartModel) addToCart,
    required TResult Function(int inventoryId) removeFromCart,
    required TResult Function(int inventoryId) updateQuantityPlus,
    required TResult Function(int inventoryId) updateQuantityMinus,
    required TResult Function() getCoupon,
    required TResult Function(Coupon coupon) chooseCoupon,
  }) {
    return chooseCoupon(coupon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCart,
    TResult? Function(AddToCartModel addToCartModel)? addToCart,
    TResult? Function(int inventoryId)? removeFromCart,
    TResult? Function(int inventoryId)? updateQuantityPlus,
    TResult? Function(int inventoryId)? updateQuantityMinus,
    TResult? Function()? getCoupon,
    TResult? Function(Coupon coupon)? chooseCoupon,
  }) {
    return chooseCoupon?.call(coupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCart,
    TResult Function(AddToCartModel addToCartModel)? addToCart,
    TResult Function(int inventoryId)? removeFromCart,
    TResult Function(int inventoryId)? updateQuantityPlus,
    TResult Function(int inventoryId)? updateQuantityMinus,
    TResult Function()? getCoupon,
    TResult Function(Coupon coupon)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (chooseCoupon != null) {
      return chooseCoupon(coupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCart value) getCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_UpdateQuantityPlus value) updateQuantityPlus,
    required TResult Function(_UpdateQuantityMinus value) updateQuantityMinus,
    required TResult Function(_GetCoupon value) getCoupon,
    required TResult Function(_ChooseCoupon value) chooseCoupon,
  }) {
    return chooseCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCart value)? getCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult? Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult? Function(_GetCoupon value)? getCoupon,
    TResult? Function(_ChooseCoupon value)? chooseCoupon,
  }) {
    return chooseCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCart value)? getCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_UpdateQuantityPlus value)? updateQuantityPlus,
    TResult Function(_UpdateQuantityMinus value)? updateQuantityMinus,
    TResult Function(_GetCoupon value)? getCoupon,
    TResult Function(_ChooseCoupon value)? chooseCoupon,
    required TResult orElse(),
  }) {
    if (chooseCoupon != null) {
      return chooseCoupon(this);
    }
    return orElse();
  }
}

abstract class _ChooseCoupon implements CartEvent {
  const factory _ChooseCoupon({required final Coupon coupon}) = _$_ChooseCoupon;

  Coupon get coupon;
  @JsonKey(ignore: true)
  _$$_ChooseCouponCopyWith<_$_ChooseCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  bool get quantityIndicator => throw _privateConstructorUsedError;
  Map<int, int> get cartItems => throw _privateConstructorUsedError;
  double? get bagTotal => throw _privateConstructorUsedError;
  double? get amountPayable => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetCartResponseModel? get getCartResponseModel =>
      throw _privateConstructorUsedError;
  List<Coupon>? get coupons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      bool quantityIndicator,
      Map<int, int> cartItems,
      double? bagTotal,
      double? amountPayable,
      String? message,
      GetCartResponseModel? getCartResponseModel,
      List<Coupon>? coupons});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
    Object? quantityIndicator = null,
    Object? cartItems = null,
    Object? bagTotal = freezed,
    Object? amountPayable = freezed,
    Object? message = freezed,
    Object? getCartResponseModel = freezed,
    Object? coupons = freezed,
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
      quantityIndicator: null == quantityIndicator
          ? _value.quantityIndicator
          : quantityIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      bagTotal: freezed == bagTotal
          ? _value.bagTotal
          : bagTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      amountPayable: freezed == amountPayable
          ? _value.amountPayable
          : amountPayable // ignore: cast_nullable_to_non_nullable
              as double?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getCartResponseModel: freezed == getCartResponseModel
          ? _value.getCartResponseModel
          : getCartResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCartResponseModel?,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isDone,
      bool quantityIndicator,
      Map<int, int> cartItems,
      double? bagTotal,
      double? amountPayable,
      String? message,
      GetCartResponseModel? getCartResponseModel,
      List<Coupon>? coupons});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? isDone = null,
    Object? quantityIndicator = null,
    Object? cartItems = null,
    Object? bagTotal = freezed,
    Object? amountPayable = freezed,
    Object? message = freezed,
    Object? getCartResponseModel = freezed,
    Object? coupons = freezed,
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
      quantityIndicator: null == quantityIndicator
          ? _value.quantityIndicator
          : quantityIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      bagTotal: freezed == bagTotal
          ? _value.bagTotal
          : bagTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      amountPayable: freezed == amountPayable
          ? _value.amountPayable
          : amountPayable // ignore: cast_nullable_to_non_nullable
              as double?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      getCartResponseModel: freezed == getCartResponseModel
          ? _value.getCartResponseModel
          : getCartResponseModel // ignore: cast_nullable_to_non_nullable
              as GetCartResponseModel?,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.hasError,
      required this.isDone,
      required this.quantityIndicator,
      required final Map<int, int> cartItems,
      this.bagTotal,
      this.amountPayable,
      this.message,
      this.getCartResponseModel,
      final List<Coupon>? coupons})
      : _cartItems = cartItems,
        _coupons = coupons;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isDone;
  @override
  final bool quantityIndicator;
  final Map<int, int> _cartItems;
  @override
  Map<int, int> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final double? bagTotal;
  @override
  final double? amountPayable;
  @override
  final String? message;
  @override
  final GetCartResponseModel? getCartResponseModel;
  final List<Coupon>? _coupons;
  @override
  List<Coupon>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartState(isLoading: $isLoading, hasError: $hasError, isDone: $isDone, quantityIndicator: $quantityIndicator, cartItems: $cartItems, bagTotal: $bagTotal, amountPayable: $amountPayable, message: $message, getCartResponseModel: $getCartResponseModel, coupons: $coupons)';
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
            (identical(other.quantityIndicator, quantityIndicator) ||
                other.quantityIndicator == quantityIndicator) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.bagTotal, bagTotal) ||
                other.bagTotal == bagTotal) &&
            (identical(other.amountPayable, amountPayable) ||
                other.amountPayable == amountPayable) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.getCartResponseModel, getCartResponseModel) ||
                other.getCartResponseModel == getCartResponseModel) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      isDone,
      quantityIndicator,
      const DeepCollectionEquality().hash(_cartItems),
      bagTotal,
      amountPayable,
      message,
      getCartResponseModel,
      const DeepCollectionEquality().hash(_coupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final bool isDone,
      required final bool quantityIndicator,
      required final Map<int, int> cartItems,
      final double? bagTotal,
      final double? amountPayable,
      final String? message,
      final GetCartResponseModel? getCartResponseModel,
      final List<Coupon>? coupons}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isDone;
  @override
  bool get quantityIndicator;
  @override
  Map<int, int> get cartItems;
  @override
  double? get bagTotal;
  @override
  double? get amountPayable;
  @override
  String? get message;
  @override
  GetCartResponseModel? get getCartResponseModel;
  @override
  List<Coupon>? get coupons;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
