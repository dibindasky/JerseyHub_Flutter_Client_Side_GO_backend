import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sWidth * 0.229,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ONAM10',
                style: kronOne(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '10 % Discound',
                    style: TextStyle(color: kGreen),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Apply Coupon',
                      style: TextStyle(color: kBlue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
