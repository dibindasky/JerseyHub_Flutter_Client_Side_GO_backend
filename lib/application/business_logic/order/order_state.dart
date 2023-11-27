part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      Address? selectedAddress,
      PaymentMethod? selectedPaymentmethod, 
      GetCheckoutResponseModel? getCheckoutResponseModel,
      GetOrderResponseModel? getOrderResponseModel,
      GetOrderDetailsResponseModel? getOrderDetailsResponseModel}) = _Initial;

  factory OrderState.initial() =>
      const OrderState(isLoading: false, hasError: false, isDone: false);
}
