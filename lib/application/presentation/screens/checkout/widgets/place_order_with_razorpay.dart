import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub/application/business_logic/user/user_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:jerseyhub/domain/models/order/place_order_model/place_order_model.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PlaceOrderWithRazorpay extends StatefulWidget {
  const PlaceOrderWithRazorpay({
    super.key,
  });

  @override
  State<PlaceOrderWithRazorpay> createState() => _PlaceOrderWithRazorpayState();
}

class _PlaceOrderWithRazorpayState extends State<PlaceOrderWithRazorpay> {
  late Razorpay _razorpay;
  int paymentId = 0;

  @override
  void initState() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () async {
              if (context.read<UserBloc>().defaultAddress == null) {
                showSnack(
                    context: context, message: 'Add address and try again');
                return;
              } else if (state.selectedPaymentmethod == null) {
                showSnack(context: context, message: 'Choose a payment option');
                return;
              } else if (state.selectedPaymentmethod?.paymentName! ==
                  'Razorpay') {
                var options = {
                  'method': {
                    'netbanking': true,
                    'card': true,
                    'upi': true,
                    'wallet': true,
                  },
                  'key': 'rzp_test_pfmFeCViv6CU5K',
                  'amount': state
                          .getCheckoutResponseModel!.data!.discountedPrice!
                          .round() *
                      100, //in the smallest currency sub-unit.
                  'name': 'user',
                  // 'order_id': createdOrder.data['id'], // Generate order_id using Orders API
                  // 'order_id': DateTime.now()
                  //     .microsecondsSinceEpoch, // Generate order_id using Orders API
                  'description': 'razorpay jerseyhub',
                  "entity": "order",
                  "currency": "INR",
                  "status": "created",
                  "notes": [],
                  'timeout': 60, // in seconds
                  'prefill': {
                    'contact': '9895123545',
                    'email': 'user@gmail.com'
                  }
                };
                paymentId = state.selectedPaymentmethod!.id!;
                _razorpay.open(options);
              } else {
                context.read<OrderBloc>().add(OrderEvent.placeOrder(
                    placeOrderModel: PlaceOrderModel(
                        addressId: context.read<UserBloc>().defaultAddress!.id!,
                        couponId: context.read<CartBloc>().usedCouponId,
                        paymentId: state.selectedPaymentmethod!.id!)));
              }
            },
            style: elevatedButtonStyleBlack,
            child: const Text('Place oreder'),
          );
        },
      ),
    );
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Success : ${response.paymentId}",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: kGreen,
        textColor: kWhite,
        fontSize: 16.0);
    context.read<OrderBloc>().add(OrderEvent.placeOrder(
        placeOrderModel: PlaceOrderModel(
            addressId: context.read<UserBloc>().defaultAddress!.id!,
            couponId: context.read<CartBloc>().usedCouponId,
            paymentId: paymentId)));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment  Failed Tryagain",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        backgroundColor: kRed,
        textColor: kWhite,
        fontSize: 16.0);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    log('external handler');
  }
}
