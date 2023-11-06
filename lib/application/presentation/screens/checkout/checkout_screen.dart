import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/screens/address/widget/address_list.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';
import 'package:jerseyhub/domain/models/order/place_order_model/place_order_model.dart';

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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                if (context.read<UserBloc>().defaultAddress == null) {
                  showSnack(
                      context: context, message: 'Add address and try again');
                  return;
                } else if (state.selectedPaymentmethod == null) {
                  showSnack(
                      context: context, message: 'Choose a payment option');
                  return;
                } else {
                  context.read<OrderBloc>().add(OrderEvent.placeOrder(
                      placeOrderModel: PlaceOrderModel(
                          addressId:
                              context.read<UserBloc>().defaultAddress!.id!,
                          couponId: context.read<CartBloc>().usedCouponId,
                          paymentId: state.selectedPaymentmethod)));
                }
              },
              style: elevatedButtonStyleBlack,
              child: const Text('Place oreder'),
            );
          },
        ),
      ),
    );
  }
}

class ChoosePaymentMethod extends StatelessWidget {
  const ChoosePaymentMethod({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const Text(
          'Payment method',
          style: headStyle,
        ),
        BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingAnimation(width: 0.20);
            }
            if (state.getCheckoutResponseModel == null ||
                state.getCheckoutResponseModel!.data == null ||
                state.getCheckoutResponseModel!.data!.paymentMethods == null ||
                state.getCheckoutResponseModel!.data!.paymentMethods!.isEmpty) {
              return const Text('network error');
            }
            final methods =
                state.getCheckoutResponseModel!.data!.paymentMethods;
            return Wrap(
              children: List.generate(
                methods!.length,
                (int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ChoiceChip(
                      padding: const EdgeInsets.all(8),
                      label: Text(methods[index].paymentName!),
                      selectedColor: kGreen,
                      selected: methods[index].id != null &&
                          state.selectedPaymentmethod == methods[index].id,
                      onSelected: (bool selected) {
                        context.read<OrderBloc>().add(
                            OrderEvent.setPaymnetMethod(
                                paymentMethodId: methods[index].id!));
                      },
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ],
    );
  }
}

class CheckOutAddressTile extends StatelessWidget {
  const CheckOutAddressTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final defaultAddress = context.read<UserBloc>().defaultAddress;
        return Column(
          children: [
            SizedBox(
              width: sWidth,
              child: Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      defaultAddress == null
                          ? kHeight50
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Address',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                kHeight5,
                                Text(
                                    '${defaultAddress.name}\n${defaultAddress.houseName},\n${defaultAddress.street},\n${defaultAddress.city},\n${defaultAddress.state} \npin: ${defaultAddress.pin}'),
                              ],
                            ),
                      const Spacer(),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Routes.addressScreen);
                              },
                              icon: const Icon(Icons.add)),
                          IconButton(
                              onPressed: () {
                                context
                                    .read<UserBloc>()
                                    .add(const UserEvent.showList());
                              },
                              icon: const Icon(
                                  Icons.arrow_drop_down_circle_sharp)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: state.showList,
              child: const AddressList(fromCheckout: true),
            )
          ],
        );
      },
    );
  }
}
