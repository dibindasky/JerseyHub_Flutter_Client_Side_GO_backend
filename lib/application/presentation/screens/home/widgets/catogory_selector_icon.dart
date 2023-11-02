import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';

import '../../../utils/constant.dart';

class CatogorySelectorIcon extends StatelessWidget {
  const CatogorySelectorIcon({
    super.key,
    required this.image,
    required this.sport,
  });
  final String image;
  final String sport;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.categoryListScreen,arguments: sport);
          },
          child: CircleAvatar(
            radius: sWidth * 0.06,
            backgroundImage: AssetImage(image),
          ),
        ),
        Text(
          sport,
          style: TextStyle(color: kBlack.withOpacity(0.6)),
        )
      ],
    );
  }
}
