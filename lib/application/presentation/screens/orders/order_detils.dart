import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenOrderDetails extends StatelessWidget {
  const ScreenOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: kronOne(fontSize: 0.05),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: sWidth * 0.22,
                  width: sWidth * 0.18,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(manjestCity)),
                      boxShadow: [
                        BoxShadow(
                            color: kBlack.withOpacity(0.8),
                            blurRadius: 1.5,
                            offset: const Offset(0, 2))
                      ],
                      color: kWhite,
                      borderRadius: const BorderRadius.all(kRadius10)),
                ),
                kWidth20,
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Item Name',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                    kHeight10,
                    Text('Quantity - 1'),
                    Row(
                      children: [
                        Text('payment Method : '),
                        Text(
                          'COD',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text('Amount : '),
                        Text(
                          '\$20',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )
                      ],
                    ),
                    kHeight5,
                  ],
                ),
              ],
            ),
            const Divider(),
            const Divider(),
            const Text(
              'Home Delivery',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            kHeight10,
            const Text(
              'NAME',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const Text('House Name'),
            const Text('Sub District, District, State'),
            // Text('State'),
            kHeight10,
            const Row(children: [
              Text('phone : '),
              Text(
                '0987654321',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
