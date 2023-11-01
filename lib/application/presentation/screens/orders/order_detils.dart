import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/order_detail_view.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenOrderDetails extends StatelessWidget {
  const ScreenOrderDetails({super.key, required this.orderID});

  final int orderID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Order Details'),
      body: OrderDetailViews(orderId: orderID),
    );
  }
}
