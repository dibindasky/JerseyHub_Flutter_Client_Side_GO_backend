import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

class PopularProductGrid extends StatelessWidget {
  const PopularProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return const InventoryTile();
        });
  }
}

