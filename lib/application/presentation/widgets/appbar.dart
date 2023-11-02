import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/bottom_bar/widgets/cart_icon.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

AppBar appbarMaker({required String title, bool cart = false}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: kronOne(fontSize: 0.05),
    ),
    actions: cart ? const [CartIconButton(), kWidth20] : null,
  );
}
