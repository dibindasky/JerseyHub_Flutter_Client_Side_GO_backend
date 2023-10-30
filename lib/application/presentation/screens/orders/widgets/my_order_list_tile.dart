import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/orders/widgets/stack_image_container.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class MyOrderListTile extends StatelessWidget {
  const MyOrderListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: sWidth * 0.3,
      width: sWidth,
      decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: kBlack)],
          color: kGrey,
          borderRadius: BorderRadius.all(kRadius10),
          border: Border()),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: sWidth * 0.22,
            width: sWidth * 0.20,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: StackImageContainer(image: manjestCity),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: StackImageContainer(image: manjestCity),
                ),
              ],
            ),
          ),
          kWidth20,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Total Price :',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  Text(
                    '300',
                    style: priceStyle,
                  )
                ],
              ),
              kHeight10,
              const Row(
                children: [
                  Text('Order Status :'),
                  Text(
                    'PENDING',
                    style: headStyle,
                  )
                ],
              ),
              kHeight5,
              const Text(
                'Cash on delevery',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
          )
        ],
      ),
    );
  }
}
