import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/category/category_screen.dart';
import 'package:jerseyhub/application/presentation/screens/inventory/widgets/bottom_buttons.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/image_show_container.dart';
import 'package:jerseyhub/application/presentation/widgets/text_container_off_size.dart';

class CategoryDetailContainer extends StatelessWidget {
  const CategoryDetailContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sWidth * 1.2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(kRadius10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageShowContainer(image: manjestCity, width: 0.90),
          const Text(
            'Manjester city Home Jeersey',
            style: headStyle,
          ),
          kHeight5,
          Row(
            children: [
              Text(
                '₹ ${inventory.discountedPrice!.roundToDouble().toString()}',
                style: priceStyle,
              ),
              kWidth10,
              Text(
                '₹ ${inventory.price!.roundToDouble().toString()}',
                style: priceStyleCross,
              ),
              const Spacer(),
              TextContainerOffSize(
                  text:
                      '${(100 - (inventory.discountedPrice! / inventory.price!) * 100).round()}% off',
                  color: kGreen),
            ],
          ),
          BottomButtonsDetails(
            inventory: inventory,
          )
        ],
      ),
    );
  }
}
