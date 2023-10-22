import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/fav_button.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

class InventoryTile extends StatelessWidget {
  const InventoryTile({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
              height: sWidth * 0.50,
              decoration: const BoxDecoration(
                  color: kGrey, borderRadius: BorderRadius.all(kRadius10)),
              child: SizedBox(
                  width: double.infinity,
                  child: Image.network(inventory.image!)),
            ),
            Positioned(
              right: 5,
              top: 5,
              child: FavButton(isFav: inventory.isFav!,id: inventory.id!,),
            ),
          ],
        ),
        Text(
          inventory.productName!,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            Text(
              inventory.discountedPrice!.round().toString(),
              style: priceStyle,
            ),
            kWidth10,
            Text(
              inventory.price!.round().toString(),
              style: priceStyleCross,
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: kGreen, borderRadius: BorderRadius.all(kRadius5)),
              child: Text(
                '${(100 - (inventory.discountedPrice! / inventory.price!) * 100).round()}% off',
                style: const TextStyle(color: kWhite),
              ),
            )
          ],
        )
      ],
    );
  }
}

