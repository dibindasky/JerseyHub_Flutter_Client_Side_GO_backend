import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenCheckout extends StatelessWidget {
  const ScreenCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Checkout'),
      body: const SafeArea(
          child: Column(
        children: [
          CheckOutAddressTile(),
          kHeight10,
        ],
      )),
    );
  }
}

class CheckOutAddressTile extends StatelessWidget {
  const CheckOutAddressTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  kHeight5,
                  Text(
                      'Dibin das\nKalapurakkal,\nCherthala south po,\nCherthala,\nAlappuzha,Kerala \npin: 688539'),
                ],
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}
