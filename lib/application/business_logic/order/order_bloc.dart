import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/order/get_order_details_response_model/get_order_details_response_model.dart';
import 'package:jerseyhub/domain/models/order/get_order_response_model/get_order_response_model.dart';
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
  }
}
