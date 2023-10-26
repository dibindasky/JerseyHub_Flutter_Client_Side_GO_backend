import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/text_container_off_size.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

class InventoryAvailableDetails extends StatelessWidget {
  const InventoryAvailableDetails({
    super.key,
    required this.inventory,
  });

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inventory.productName!,
            style: headStyle,
          ),
          kHeight10,
          Text(
            '₹ ${inventory.discountedPrice!.roundToDouble().toString()}',
            style: priceStyle,
          ),
          Text(
            '₹ ${inventory.price!.roundToDouble().toString()}',
            style: priceStyleCross,
          ),
          kHeight20,
          Row(
            children: [
              const Text(
                'Offer Availabe',
                style: headStyle,
              ),
              kWidth10,
              TextContainerOffSize(
                  text:
                      '${(100 - (inventory.discountedPrice! / inventory.price!) * 100).round()}% off',
                  color: kGreen)
            ],
          ),
          kHeight20,
          Row(
            children: [
              const Text(
                'Size',
                style: headStyle,
              ),
              kWidth10,
              TextContainerOffSize(text: inventory.size!, color: kBlack)
            ],
          ),
        ],
      ),
    );
  }
}

