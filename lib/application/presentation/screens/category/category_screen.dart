import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appbarMaker(title: 'Football'),);
  }
}