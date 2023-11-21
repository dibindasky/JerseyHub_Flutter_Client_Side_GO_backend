import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/order_detail_item_tile.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/order_traker.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';

class OrderDetailViews extends StatelessWidget {
  const OrderDetailViews({
    super.key,
    required this.orderId,
  });

  final int orderId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<OrderBloc>()
          .add(OrderEvent.getOrderDetail(orderId: orderId));
    });
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: BlocConsumer<OrderBloc, OrderState>(
            listener: (context, state) {
              if (state.hasError || state.isDone) {
                showSnack(
                    context: context,
                    message: state.message!,
                    color: state.hasError ? kRed : kGreen);
              }
            },
            builder: (context, state) {
              if (state.getOrderDetailsResponseModel != null) {
                final data = state.getOrderDetailsResponseModel!.data;
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const OrderTraker(),
                      const Divider(),
                      data!.products != null || data.products!.isNotEmpty
                          ? ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  OrderDetailItemTile(
                                      product: data.products![index]),
                              separatorBuilder: (context, index) =>
                                  const Divider(),
                              itemCount: data.products!.length,
                            )
                          : kHeight5,
                      const Divider(),
                      Text(
                        'TOTAL AMOUND : ${data.totalAmount}',
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      kHeight10,
                      Text(
                        data.orderStatus!,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(data.address!),
                      kHeight10,
                      Row(children: [
                        const Text('phone : '),
                        Text(
                          data.phone!,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ]),
                      TextButton(
                          onPressed: () {
                            data.orderStatus! == 'PENDING'
                                ? context.read<OrderBloc>().add(
                                    OrderEvent.cancelOrder(orderId: orderId))
                                : data.orderStatus! == "DELIVERED"
                                    ? context.read<OrderBloc>().add(
                                        OrderEvent.returnOrder(
                                            orderId: orderId))
                                    : '';
                          },
                          child: Text(
                            data.orderStatus! == 'PENDING'
                                ? 'Cancel Order'
                                : data.orderStatus! == "DELIVERED"
                                    ? 'Return Order'
                                    : '',
                            style: const TextStyle(color: kRed),
                          ))
                    ]);
              } else {
                return const LoadingAnimation(width: 0.20);
              }
            },
          ),
        ),
      ),
    );
  }
}
