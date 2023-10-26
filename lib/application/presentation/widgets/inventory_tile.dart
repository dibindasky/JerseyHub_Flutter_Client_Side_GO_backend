import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/fav_button.dart';
import 'package:jerseyhub/application/presentation/widgets/image_show_container.dart';
import 'package:jerseyhub/application/presentation/widgets/text_container_off_size.dart';
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
            InkWell(onTap: (){
              Navigator.pushNamed(context, Routes.inventoryDetailScreen,arguments: inventory);
            },
              child: ImageShowContainer(image: inventory.image!,width: 0.50,),
            ),
            Positioned(
              right: 5,
              top: 5,
              child: FavButton(
                isFav: inventory.isFav!,
                id: inventory.id!,
              ),
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
            TextContainerOffSize(text: '${(100 - (inventory.discountedPrice! / inventory.price!) * 100).round()}% off',color: kGreen,)
          ],
        )
      ],
    );
  }
}

