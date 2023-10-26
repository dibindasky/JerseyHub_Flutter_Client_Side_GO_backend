import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/cart_tile.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 8,
            shrinkWrap: true,
            itemBuilder: (context, index) => SizedBox(
              height: sWidth * 0.40,
              width: sWidth,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: double.infinity,
                  child: CartTile(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
