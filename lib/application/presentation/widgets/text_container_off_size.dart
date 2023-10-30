import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class TextContainerOffSize extends StatelessWidget {
  const TextContainerOffSize({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: color, borderRadius: const BorderRadius.all(kRadius5)),
      child: Text(
        text,
        style: const TextStyle(color: kWhite),
      ),
    );
  }
}
