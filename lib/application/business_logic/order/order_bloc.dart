import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/order/get_checkout_response_model/get_checkout_response_model.dart';
import 'package:jerseyhub/domain/models/order/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:jerseyhub/domain/models/order/get_order_response_model/get_order_response_model.dart';
import 'package:jerseyhub/domain/models/order/place_order_model/place_order_model.dart';
import 'package:jerseyhub/domain/models/user/address/get_address_response_model/address.dart';
import 'package:jerseyhub/domain/repositories/order_repository.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRepository;

  OrderBloc(this.orderRepository) : super(OrderState.initial()) {
    on<_GetOrders>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await orderRepository.getOrders(
          tokenModel: tokenModel, idQurrey: IdQurrey(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'something went wrong please try agiain')),
          (getOrderResponseModel) {
        emit(state.copyWith(
            isLoading: false, getOrderResponseModel: getOrderResponseModel));
      });
    });
    on<_GetOrderDetail>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await orderRepository.getOrderDetails(
          tokenModel: tokenModel, orderId: event.orderId);
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'something went wrong please try agiain'));
      }, (getOrderDetailResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            getOrderDetailsResponseModel: getOrderDetailResponseModel));
      });
    });
    on<_CancelOrder>((event, emit) async {});
    on<_ReturnOrder>((event, emit) async {});
    on<_PlaceOrder>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      event.placeOrderModel.userId = tokenModel.userId;
      final result = await orderRepository.placeOrder(
          tokenModel: tokenModel, placeOrderModel: event.placeOrderModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'Something went wrong')),
          (successResponseModel) => emit(state.copyWith(
              isLoading: false, isDone: true, message: 'Order placed')));
    });
    on<_GetCheckout>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await orderRepository.getCheckout(
          tokenModel: tokenModel, idQurrey: IdQurrey(id: tokenModel.userId));
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'something went wrong please try agiain'));
      }, (getCheckoutResponseModel) {
        emit(state.copyWith(
            isLoading: false,
            getCheckoutResponseModel: getCheckoutResponseModel));
      });
    });
    on<_SetAddress>((event, emit) {
      emit(state.copyWith(selectedAddress: event.address));
    });
    on<_SetPaymnetMethod>((event, emit) {
      emit(state.copyWith(selectedPaymentmethod: event.paymentMethodId));
    });
  }
}
