import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/screens/checkout/widgets/checkout_address_tile.dart';
import 'package:jerseyhub/application/presentation/screens/checkout/widgets/choose_payment_method.dart';
import 'package:jerseyhub/application/presentation/screens/checkout/widgets/place_order_with_razorpay.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenCheckout extends StatelessWidget {
  const ScreenCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(const OrderEvent.getCheckout());
      context.read<UserBloc>().add(UserEvent.getAddress());
    });
    return Scaffold(
      appBar: appbarMaker(title: 'Checkout'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CheckOutAddressTile(),
              kHeight10,
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Cart Items',
                  style: headStyle,
                ),
              ),
              SizedBox(
                height: sWidth * 0.45,
                child: BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, state) {
                    if (state.isDone || state.hasError) {
                      showSnack(
                          context: context,
                          message: state.message!,
                          color: state.isDone ? kGreen : kRed);
                    }
                    if (state.isDone && state.message == 'Order placed') {
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.bottomBar, (route) => false);
                    }
                  },
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const LoadingAnimation(width: 0.20);
                    }
                    if (state.getCheckoutResponseModel == null ||
                        state.getCheckoutResponseModel!.data == null ||
                        state.getCheckoutResponseModel!.data!.products ==
                            null ||
                        state.getCheckoutResponseModel!.data!.products!
                            .isEmpty) {
                      return const Text('items is empty');
                    }
                    final data = state.getCheckoutResponseModel!.data!.products;
                    return ListView.builder(
                      itemCount: data!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            width: sWidth * 0.25,
                            height: sWidth * 0.30,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(kRadius5),
                              color: kGrey,
                              image: DecorationImage(
                                image: NetworkImage(data[index].image!),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: sWidth * 0.25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index].productName!,
                                  overflow: TextOverflow.ellipsis,
                                  style: headStyle,
                                ),
                                Text(
                                    '₹ ${data[index].totalPrice!.round()} X ${data[index].quantity}')
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const ChoosePaymentMethod(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const PlaceOrderWithRazorpay(),
    );
  }
}
