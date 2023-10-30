import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/presentation/screens/coupon/coupon_tile.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenCoupon extends StatelessWidget {
  const ScreenCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Apply Coupon', style: priceStyle),
              Container(
                height: sWidth * 0.10,
                width: sWidth * 0.70,
                decoration: BoxDecoration(
                    color: kGrey.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(kRadius10)),
                child: const TextField(
                  textCapitalization: TextCapitalization.characters,
                  style: headStyle,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Iconsax.tag,
                      color: kBlack,
                    ),
                  ),
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => const CouponCard()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
