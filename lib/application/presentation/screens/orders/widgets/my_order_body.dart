import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/my_order_list_tile.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:lottie/lottie.dart';

class MyOrderBody extends StatelessWidget {
  const MyOrderBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(const OrderEvent.getOrders());
    });
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingAnimation(width: 0.20);
            }
            if (state.getOrderResponseModel == null ||
                state.getOrderResponseModel!.data == null ||
                state.getOrderResponseModel!.data!.isEmpty) {
              return Center(
                child: Lottie.asset('assets/animation/cart_empty.json'),
              );
            }
            return ListView.builder(
              itemCount: state.getOrderResponseModel!.data!.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.orderDetailScreen,
                      arguments: state.getOrderResponseModel!.data![index]
                          .orderDetails!.id!);
                },
                child: MyOrderListTile(
                    data: state.getOrderResponseModel!.data![index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
