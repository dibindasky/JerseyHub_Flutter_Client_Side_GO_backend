import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class BottomCheckOutSession extends StatelessWidget {
  const BottomCheckOutSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return state.getCartResponseModel == null ||
                state.getCartResponseModel!.data == null ||
                state.getCartResponseModel!.data!.data == null ||
                state.getCartResponseModel!.data!.data!.isEmpty
            ? kHeight5
            : Wrap(
                children: [
                  SizedBox(
                      // height: sWidth * 0.37,
                      width: sWidth,
                      child: Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
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
                              Row(
                                children: [
                                  const Text('Bag Total'),
                                  const Spacer(),
                                  Text(
                                    state.bagTotal!.round().toString(),
                                    style: headStyle,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Text('Coupon used'),
                                  const Spacer(),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.couponScreen);
                                      },
                                      child: Text(
                                        context.read<CartBloc>().usedCouponId !=
                                                0
                                            ? state.coupons!
                                                .firstWhere((element) =>
                                                    element.id! ==
                                                    context
                                                        .read<CartBloc>()
                                                        .usedCouponId)
                                                .coupon!
                                            : 'Apply coupon',
                                        style: const TextStyle(color: kBlue),
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
                              Row(
                                children: [
                                  const Text(
                                    'Amount Payable',
                                    style: headStyle,
                                  ),
                                  const Spacer(),
                                  Text(
                                    state.amountPayable!.round().toString(),
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
                      Text(state.amountPayable!.round().toString(),
                          style: priceStyle)
                    ]),
                    trailing: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.checkoutScreen);
                      },
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
      },
    );
  }
}
