import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class BottomCheckOutSession extends StatelessWidget {
  const BottomCheckOutSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        SizedBox(
            height: sWidth * 0.35,
            width: sWidth,
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Order Details',
                      style: headStyle,
                    ),
                    kHeight5,
                    const Row(
                      children: [
                        Text('Bag Total'),
                        Spacer(),
                        Text(
                          '506.2',
                          style: headStyle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Coupon Savings'),
                        const Spacer(),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              'Apply coupon',
                              style: TextStyle(color: kBlue),
                            ))
                      ],
                    ),
                    const Row(
                      children: [
                        Text('Delivery fee'),
                        Spacer(),
                        Text(
                          '0.0',
                          style: headStyle,
                        )
                      ],
                    ),
                    kHeight10,
                    const Row(
                      children: [
                        Text(
                          'Amount Payable',
                          style: headStyle,
                        ),
                        Spacer(),
                        Text(
                          '506.2',
                          style: headStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )),
        const Divider(
          color: kBlack,
        ),
        ListTile(
          title: Wrap(direction: Axis.vertical, children: [
            Text(
              'Total Price',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: sWidth * 0.040,
                  color: kBlack.withOpacity(0.6)),
            ),
            kWidth5,
            Text('560.00', style: priceStyle)
          ]),
          trailing: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleBlack,
            child: Text(
              'Proceed To Checkout',
              style: priceStyle,
            ),
          ),
        ),
        kHeight30
      ],
    );
  }
}
