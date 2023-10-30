import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: sWidth * 0.22,
          width: sWidth * 0.18,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(manjestCity)),
              boxShadow: [
                BoxShadow(
                    color: kBlack.withOpacity(0.8),
                    blurRadius: 1.5,
                    offset: const Offset(0, 2))
              ],
              color: kWhite,
              borderRadius: const BorderRadius.all(kRadius10)),
        ),
        kWidth20,
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Item Name',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            kHeight10,
            Text('Quantity - 1'),
            Row(
              children: [
                Text('Amount : '),
                Text(
                  '₹ 300',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
            kHeight5,
          ],
        ),
      ],
    );
  }
}
