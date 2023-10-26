import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class AnimatedBox extends StatelessWidget {
  const AnimatedBox({
    super.key,
    required this.isSort,
  });

  final bool isSort;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(kRadius10),
        border: const Border(),
        color: isSort ? kGrey.withOpacity(0.5) : kGrey,
      ),
      curve: Curves.easeInQuad,
      // curve: Curves.linearToEaseOut,
      duration: const Duration(milliseconds: 500),
      height: isSort ? sWidth * 0.50 : sWidth * 0.005,
      width: isSort ? sWidth : sWidth * 0.05,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      child: Wrap(runSpacing: 10, spacing: 20, children: [
        AnimatedCrossFade(
          secondChild: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleWhite,
            child: const Text('Price Low to High'),
          ),
          firstChild: kWidth10,
          crossFadeState:
              !isSort ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
        AnimatedCrossFade(
          secondChild: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleWhite,
            child: const Text('Price High to Low'),
          ),
          firstChild: kWidth10,
          crossFadeState:
              !isSort ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
        AnimatedCrossFade(
          secondChild: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleWhite,
            child: const Text('Offers'),
          ),
          firstChild: kWidth10,
          crossFadeState:
              !isSort ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
        AnimatedCrossFade(
          secondChild: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleBlack,
            child: const Text('Football'),
          ),
          firstChild: kWidth10,
          crossFadeState:
              !isSort ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
        AnimatedCrossFade(
          secondChild: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleWhite,
            child: const Text('Basketball'),
          ),
          firstChild: kWidth10,
          crossFadeState:
              !isSort ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
        AnimatedCrossFade(
          secondChild: ElevatedButton(
            onPressed: () {},
            style: elevatedButtonStyleWhite,
            child: const Text('Cricket'),
          ),
          firstChild: kWidth10,
          crossFadeState:
              !isSort ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 500),
        ),
      ]),
    );
  }
}
