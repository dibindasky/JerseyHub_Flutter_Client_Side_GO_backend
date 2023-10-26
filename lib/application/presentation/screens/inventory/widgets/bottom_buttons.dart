import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/fav_button.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

class BottomButtonsDetails extends StatelessWidget {
  const BottomButtonsDetails({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const Divider(
          color: kBlack,
        ),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: const BoxDecoration(
                color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
            child: FavButton(isFav: inventory.isFav!, id: inventory.id!),
          ),title: ElevatedButton(
          style: elevatedButtonStyle,
          onPressed: () {},
          child: const Text('Add To Bag')),
        )
      ],
    );
  }
}
