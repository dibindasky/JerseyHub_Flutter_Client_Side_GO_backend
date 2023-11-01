import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:jerseyhub/domain/models/cart/cart_quantity_update_qurrey/cart_quantity_update_qurrey.dart';
import 'package:jerseyhub/domain/models/cart/get_cart_response_model/get_cart_response_model.dart';
import 'package:jerseyhub/domain/models/cart/get_cart_response_model/inventory_cart.dart';
import 'package:jerseyhub/domain/models/cart/remove_from_cart_qurrey/remove_from_cart_qurrey.dart';
import 'package:jerseyhub/domain/models/coupon/get_coupon_response_model/coupon.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/repositories/cart_repository.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository;
  int cartID = 0;
  int usedCouponId = 0;

  CartBloc(this.cartRepository) : super(CartState.initial()) {
    on<_GetCart>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          isDone: false,
          hasError: false,
          quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final result = await cartRepository.getCart(
          tokenModel: tokenModel, idQurrey: IdQurrey(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong, please refresh your screen')),
          (getCartResponseModel) {
        Map<int, int> map = {};
        double bagTotal = 0, amountPayable = 0;
        if (getCartResponseModel.data!.data != null) {
          map = setQuantity(getCartResponseModel.data!.data!);
          for (var item in getCartResponseModel.data!.data!) {
            bagTotal += item.totalPrice!;
            amountPayable += item.discountedPrice!;
          }
        }
        emit(state.copyWith(
            isLoading: false,
            amountPayable: amountPayable,
            bagTotal: bagTotal,
            getCartResponseModel: getCartResponseModel,
            cartItems: map));
        cartID = getCartResponseModel.data!.id!;
      });
    });

    on<_AddToCart>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          isDone: false,
          hasError: false,
          quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final model = event.addToCartModel;
      model.userId = tokenModel.userId;
      final result = await cartRepository.addToCart(
          tokenModel: tokenModel, addToCartModel: model);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong, please try again')),
          (successResponseModel) {
        Map<int, int> map = Map.from(state.cartItems);
        map[event.addToCartModel.inventoryId] = 1;
        emit(state.copyWith(
            isLoading: false,
            isDone: true,
            cartItems: map,
            message: 'successfully added to cart'));
      });
    });

    on<_RemoveFromCart>((event, emit) async {
      emit(state.copyWith(
          isDone: false, hasError: false, quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final result = await cartRepository.removeFromCart(
          tokenModel: tokenModel,
          removeFromCartQurrey: RemoveFromCartQurrey(
              cartId: cartID, inventoryId: event.inventoryId));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              message: 'something went wrong, please try again')),
          (successResponseModel) {
        emit(state.copyWith(
            isDone: true, message: 'successfully removed from cart'));
        add(const CartEvent.getCart());
      });
    });

    on<_UpdateQuantityPlus>((event, emit) async {
      final tokenModel = await SharedPref.getToken();
      final result = await cartRepository.updateQuantityPlus(
          tokenModel: tokenModel,
          cartQuantityUpdateQurrey: CartQuantityUpdateQurrey(
              cartId: cartID, inventory: event.inventoryId));
      result.fold((failure) => null, (successResponseModel) {
        Map<int, int> map = Map.from(state.cartItems);
        map[event.inventoryId] = map[event.inventoryId]! + 1;
        final item = state.getCartResponseModel!.data!.data!
            .firstWhere((item) => item.productId == event.inventoryId);
        emit(state.copyWith(
            quantityIndicator: true,
            cartItems: map,
            bagTotal: state.bagTotal! + item.totalPrice!,
            amountPayable: state.amountPayable! + item.discountedPrice!));
      });
    });

    on<_UpdateQuantityMinus>((event, emit) async {
      final tokenModel = await SharedPref.getToken();
      if (state.cartItems[event.inventoryId] == 1) {
        add(CartEvent.removeFromCart(inventoryId: event.inventoryId));
        return;
      }
      final result = await cartRepository.updateQuantityminus(
          tokenModel: tokenModel,
          cartQuantityUpdateQurrey: CartQuantityUpdateQurrey(
              cartId: cartID, inventory: event.inventoryId));
      result.fold((failure) => null, (successResponseModel) {
        Map<int, int> map = Map.from(state.cartItems);
        map[event.inventoryId] = map[event.inventoryId]! - 1;
        final item = state.getCartResponseModel!.data!.data!
            .firstWhere((item) => item.productId == event.inventoryId);
        emit(state.copyWith(
            quantityIndicator: true,
            cartItems: map,
            bagTotal: state.bagTotal! - item.totalPrice!,
            amountPayable: state.amountPayable! - item.discountedPrice!));
      });
    });

    on<_GetCoupon>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          hasError: false,
          isDone: false,
          quantityIndicator: false));
      final tokenModel = await SharedPref.getToken();
      final result = await cartRepository.getCoupons(tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'please refresh your screen')), (getCartResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            coupons: getCartResponseModel.data!
                .where((element) => element.valid!)
                .toList()));
      });
    });

    on<_ChooseCoupon>((event, emit) {
      usedCouponId = event.coupon.id!;
      double newTotal = ((100-event.coupon.discountRate!)/100)*state.amountPayable!;
      emit(state.copyWith(amountPayable: newTotal));
    });
  }

  Map<int, int> setQuantity(List<InventoryCart> items) {
    Map<int, int> map = {};
    for (var item in items) {
      map[item.productId!] = item.quantity!;
    }
    return map;
  }
}
