import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/bordered_container.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/quantity_adder.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: sWidth * 0.33,
            width: sWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(kRadius10),
            ),
            child: Slidable(
              direction: Axis.horizontal,
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {},
                    backgroundColor: kBlack,
                    foregroundColor: kWhite,
                    icon: Icons.delete,
                    label: 'Remove',
                  ),
                ],
              ),
              child: Card(
                color: kGrey,
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: sWidth * 0.30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Item Name',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        kHeight5,
                        SizedBox(
                          width: sWidth * 0.50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text(
                                    '40 % Discound',
                                    style: TextStyle(color: kGreen),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '100',
                                        style: priceStyle,
                                      ),
                                      kWidth10,
                                      Text(
                                        '150',
                                        style: priceStyleCross,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const BorderContainer(string: 'L'),
                            ],
                          ),
                        ),
                        const QuantityAdder()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: sWidth * 0.10,
          left: sWidth * 0.10,
          child: Container(
            height: sWidth * 0.28,
            width: sWidth * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(manjestCity), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(kRadius10),
            ),
          ),
        )
      ],
    );
  }
}
