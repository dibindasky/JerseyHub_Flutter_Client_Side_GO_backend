import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

AppBar appbarMaker({required String title}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      style: kronOne(fontSize: 0.05),
    ),
  );
}
