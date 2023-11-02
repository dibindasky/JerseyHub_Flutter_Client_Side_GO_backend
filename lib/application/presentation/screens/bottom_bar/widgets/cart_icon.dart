import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';

import '../../../utils/colors.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: kGrey,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.cartScreen);
            },
            icon: const Icon(Iconsax.shopping_bag),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: BlocBuilder<CartBloc, CartState>(
            buildWhen: (p, c) => p.cartItems.length != c.cartItems.length,
            builder: (context, state) {
              if (state.cartItems.isEmpty) {
                return const SizedBox();
              } else {
                return const Icon(
                  Icons.circle,
                  size: 15,
                  color: kBlack,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
