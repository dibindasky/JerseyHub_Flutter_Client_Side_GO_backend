import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class InventoryTile extends StatelessWidget {
  const InventoryTile({
    super.key,
  });

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
                  color: kGrey,
                  borderRadius: BorderRadius.all(kRadius10)),
              child: SizedBox(
                  width: double.infinity,
                  child: Image.network(manjestCity)),
            ),
            const Positioned(
              right: 5,
              top: 5,
              child: CircleAvatar(
                backgroundColor: kWhite,
                child: Icon(Icons.favorite_border_outlined),
              ),
            ),
          ],
        ),
        const Text('Manjester City'),
        Row(
          children: [
            Text(
              '₹600',
              style: priceStyle,
            ),
            kWidth10,
            Text(
              '₹1000',
              style: priceStyleCross,
            ),
            const Spacer(),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  color: kGreen,
                  borderRadius: BorderRadius.all(kRadius5)),
              child: const Text(
                '40% off',
                style: TextStyle(color: kWhite),
              ),
            )
          ],
        )
      ],
    );
  }
}
