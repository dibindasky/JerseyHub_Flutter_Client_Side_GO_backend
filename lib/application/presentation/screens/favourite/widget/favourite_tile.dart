import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';
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
        ElevatedButton(
            style: elevatedButtonStyle,
            onPressed: () {},
            child: const Text('Add To Bag')),
      ],
    );
  }
}
