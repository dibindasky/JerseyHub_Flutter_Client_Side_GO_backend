import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

import '../../utils/constant.dart';
import '../../widgets/custom_search_field.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(flex: 7,child: CoustomSearchField()),
            Expanded(child: IconButton(onPressed: (){}, icon: const Icon(Iconsax.sort))),
          ],
        ),
        Container(),
        GridView.builder(
            //physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return const InventoryTile();
            }),
        kHeight10
      ],
    );
  }
}
