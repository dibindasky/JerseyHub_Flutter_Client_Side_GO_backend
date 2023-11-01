part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrders() = _GetOrders;
  const factory OrderEvent.getOrderDetail() = _GetOrderDetail;
  const factory OrderEvent.cancelOrder() = _CancelOrder;
  const factory OrderEvent.returnOrder() = _ReturnOrder;
  
}