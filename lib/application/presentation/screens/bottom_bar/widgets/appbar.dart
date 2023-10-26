import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jerseyhub/application/presentation/screens/bottom_bar/widgets/cart_icon.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

AppBar mainAppbar() {
  return AppBar(
    backgroundColor: kWhite,
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: kWhite, systemNavigationBarColor: kWhite),
    centerTitle: true,
    title: Text(
      'Jersey Hub',
      style: kronOne(fontSize: 0.05),
    ),
    actions: const [CartIconButton(), kWidth20],
  );
}
