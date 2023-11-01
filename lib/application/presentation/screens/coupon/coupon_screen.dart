import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/coupon/coupon_tile.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';

class ScreenCoupon extends StatelessWidget {
  const ScreenCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCoupon());
    });
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
                child: BlocBuilder<CartBloc, CartState>(
                  buildWhen: (c, p) => c.coupons != p.coupons,
                  builder: (context, state) {
                    if(state.coupons == null || state.coupons!.isEmpty){
                      return const Center(child: Text('No Coupons Available'),);
                    }
                    if(state.isLoading){
                      return const LoadingAnimation(width: 0.20);
                    }
                    return ListView.builder(
                      itemCount: state.coupons!.length,
                      itemBuilder: (context, index) => CouponCard(
                        coupon: state.coupons![index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
