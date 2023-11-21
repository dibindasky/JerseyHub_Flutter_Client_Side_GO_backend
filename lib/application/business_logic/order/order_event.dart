part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrders() = _GetOrders;
  const factory OrderEvent.getOrderDetail({required int orderId}) =
      _GetOrderDetail;
  const factory OrderEvent.cancelOrder({required int orderId}) = _CancelOrder;
  const factory OrderEvent.returnOrder({required int orderId}) = _ReturnOrder;
  const factory OrderEvent.getCheckout() = _GetCheckout;
  const factory OrderEvent.callRazorpay({required PlaceOrderModel placeOrderModel}) = _CallRazorpay;
  const factory OrderEvent.placeOrder({required PlaceOrderModel placeOrderModel}) = _PlaceOrder;
  const factory OrderEvent.setPaymnetMethod({required int paymentMethodId}) = _SetPaymnetMethod;
  const factory OrderEvent.setAddress({required Address address}) = _SetAddress;
}
