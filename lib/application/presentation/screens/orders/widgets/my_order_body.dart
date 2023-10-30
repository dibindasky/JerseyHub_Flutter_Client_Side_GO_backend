import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/my_order_list_tile.dart';

class MyOrderBody extends StatelessWidget {
  const MyOrderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.orderDetailScreen);
            },
            child: const MyOrderListTile(),
          ),
        ),
      ),
    );
  }
}
