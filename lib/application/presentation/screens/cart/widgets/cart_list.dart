import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/cart_tile.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:lottie/lottie.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CartBloc>().add(const CartEvent.getCart());
    });
    return Column(
      children: [
        Expanded(
          child: BlocConsumer<CartBloc, CartState>(
            listener: (context, state) {
              if (state.hasError || state.isDone) {
                showSnack(
                    context: context,
                    message: state.message!,
                    color: state.isDone ? kGreen : kRed);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingAnimation(width: 0.20);
              } else if (state.getCartResponseModel == null ||
                  state.getCartResponseModel!.data == null ||
                  state.getCartResponseModel!.data!.data == null ||
                  state.getCartResponseModel!.data!.data!.isEmpty) {
                return Center(
                  child:  Lottie.asset('assets/animation/cart_empty.json'),
                );
              } else if (state.getCartResponseModel != null &&
                  state.getCartResponseModel!.data!.data!.isNotEmpty) {
                return ListView.builder(
                  itemCount: state.getCartResponseModel!.data!.data!.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => SizedBox(
                    height: sWidth * 0.40,
                    width: sWidth,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: double.infinity,
                        child: CartTile(
                            inventoryCart:
                                state.getCartResponseModel!.data!.data![index]),
                      ),
                    ),
                  ),
                );
              } else {
                return const Text('Your cart is empty');
              }
            },
          ),
        ),
      ],
    );
  }
}
