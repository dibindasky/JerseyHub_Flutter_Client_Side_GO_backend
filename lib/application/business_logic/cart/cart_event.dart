part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCart() = _GetCart;
  const factory CartEvent.addToCart({required AddToCartModel addToCartModel}) =
      _AddToCart;
  const factory CartEvent.removeFromCart({required int inventoryId}) =
      _RemoveFromCart;
  const factory CartEvent.updateQuantityPlus({required int inventoryId}) =
      _UpdateQuantityPlus;
  const factory CartEvent.updateQuantityMinus({required int inventoryId}) =
      _UpdateQuantityMinus;
  const factory CartEvent.getCoupon() = _GetCoupon;
  const factory CartEvent.chooseCoupon({required Coupon coupon}) =
      _ChooseCoupon;
}
