import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/fav_button.dart';
import 'package:jerseyhub/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

class BottomButtonsDetails extends StatelessWidget {
  const BottomButtonsDetails({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: const BoxDecoration(
            color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
        child: FavButton(isFav: inventory.isFav!, id: inventory.id!),
      ),
      title: BlocBuilder<CartBloc, CartState>(
        buildWhen: (p, c) =>
            p.cartItems[inventory.id!] != c.cartItems[inventory.id!],
        builder: (context, state) {
          return ElevatedButton(
              style: elevatedButtonStyle,
              onPressed: () {
                if (state.cartItems.containsKey(inventory.id)) {
                  Navigator.pushNamed(context, Routes.cartScreen);
                } else {
                  context.read<CartBloc>().add(CartEvent.addToCart(
                      addToCartModel:
                          AddToCartModel(inventoryId: inventory.id!)));
                }
              },
              child: Text(state.cartItems.containsKey(inventory.id)
                  ? 'Go To Cart'
                  : 'Add To Bag'));
        },
      ),
    );
  }
}
