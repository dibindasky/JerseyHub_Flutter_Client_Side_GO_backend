import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Center(
        child: Text(
          'Jersey Hub',
          style: kronOne(color: kWhite,fontSize: MediaQuery.of(context).size.width * 0.10),
        ),
      ),
    );
  }
}
