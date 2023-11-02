import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/domain/models/coupon/get_coupon_response_model/coupon.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
    required this.coupon,
  });

  final Coupon coupon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coupon.coupon!,
                style: kronOne(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${coupon.discountRate} % Discound',
                    style: const TextStyle(color: kGreen),
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<CartBloc>()
                          .add(CartEvent.chooseCoupon(coupon: coupon));
                      Navigator.pop(context);
                    },
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
