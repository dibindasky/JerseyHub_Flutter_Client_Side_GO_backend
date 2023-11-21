import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayPayment {
  late Razorpay _razorpay;

  Future<void> razorpayCall() async {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    var options = {
      'key': 'zp_test_pfmFeCViv6CU5K',
      'amount': 5000, //in the smallest currency sub-unit.
      'name': 'Acme Corp.',
      'order_id': 'order_EMBFqjDHEEn80l', // Generate order_id using Orders API
      'description': 'Fine T-Shirt',
      'timeout': 60, // in seconds
      'prefill': {'contact': '9123456789', 'email': 'gaurav.kumar@example.com'}
    };
    _razorpay.open(options);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Success : ${response.paymentId}",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: kGreen,
        textColor: kWhite,
        fontSize: 16.0);
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment  Failed",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: kRed,
        textColor: kWhite,
        fontSize: 16.0);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
    print('external handler');
  }

  Future<void> createOrder() async {
    const String apiKey = 'YOUR_KEY_ID';
    const String apiSecret = 'YOUR_KEY_SECRET';
    const String baseUrl = 'https://api.razorpay.com/v1/orders';
    const String receiptId = 'rcptid_11';
    const int amount = 50000;
    const String currency = 'INR';

    final dio = Dio();

    final requestOptions = Options(
      headers: {
        'Authorization':
            'Basic ${base64Encode('$apiKey:$apiSecret'.codeUnits)}',
        'Content-Type': 'application/json',
      },
    );

    final data = {
      'amount': amount,
      'currency': currency,
      'receipt': receiptId,
    };

    try {
      final response = await dio.post(
        baseUrl,
        data: jsonEncode(data),
        options: requestOptions,
      );

      print('Razorpay order created successfully.');
      print(response.data);
    } on DioException catch (e) {
      print('Error creating Razorpay order: ${e.message}');
    }
  }
}
