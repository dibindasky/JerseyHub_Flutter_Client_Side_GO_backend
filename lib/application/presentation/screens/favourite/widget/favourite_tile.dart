import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/cart/cart_bloc.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';
import 'package:jerseyhub/domain/models/cart/add_to_cart_model/add_to_cart_model.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

class FavTile extends StatelessWidget {
  const FavTile({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InventoryTile(inventory: inventory),
        BlocBuilder<CartBloc, CartState>(
          buildWhen: (p, c) =>
              p.cartItems.containsKey(inventory.id) != c.cartItems.containsKey(inventory.id),
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
      ],
    );
  }
}
