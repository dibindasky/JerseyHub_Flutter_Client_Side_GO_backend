import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/bordered_container.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class QuantityAdder extends StatelessWidget {
  const QuantityAdder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: sWidth * 0.07,
              decoration: boxborder,
              child: Center(
                  child: Text(
                '-',
                style: buttonStyleQuantity,
              )),
            ),
          ),
          kWidth5,
          const BorderContainer(
            string: '8',
          ),
          kWidth5,
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: sWidth * 0.07,
              decoration: boxborder,
              child: Center(
                  child: Text(
                '+',
                style: buttonStyleQuantity,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
