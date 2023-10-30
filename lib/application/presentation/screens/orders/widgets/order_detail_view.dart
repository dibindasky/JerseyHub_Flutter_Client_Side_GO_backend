import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/order_detail_item_tile.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/order_traker.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class OrderDetailViews extends StatelessWidget {
  const OrderDetailViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const OrderTraker(),
            const Divider(),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const OrderDetailItemTile(),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 3,
            ),
            const Divider(),
            const Text(
              'TOTAL AMOUND : 900',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            kHeight10,
            const Text(
              'PENDING',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const Text('House Name'),
            const Text('Sub District, District, State'),
            kHeight10,
            const Row(children: [
              Text('phone : '),
              Text(
                '0987654321',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ]),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Cancel Order',
                  style: TextStyle(color: kRed),
                ))
          ]),
        ),
      ),
    );
  }
}
