import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

class FavouriteTile extends StatelessWidget {
  const FavouriteTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InventoryTile(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kWidth5,
            const Icon(Iconsax.shopping_bag5),
            ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: () {},
                child: const Text('Add To Bag')),
          ],
        )
      ],
    );
  }
}
