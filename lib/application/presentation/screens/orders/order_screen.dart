import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/my_order_body.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'My Orders'),
      body: const MyOrderBody(),
    );
  }
}
