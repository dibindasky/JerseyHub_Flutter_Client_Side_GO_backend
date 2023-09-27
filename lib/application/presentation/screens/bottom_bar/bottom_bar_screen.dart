import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/home/home_screen.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

import 'widgets/bottom_bar_container.dart';
import 'widgets/cart_icon.dart';

class ScreenBottombar extends StatelessWidget {
  const ScreenBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Jersey Hub',
          style: kronOne(fontSize: 0.05),
        ),
        actions: const [CartIconButton(), kWidth20],
      ),
      body:const ScreenHome(),
      extendBody: true,
      bottomNavigationBar: const BottomNavigationContainer(),
    );
  }
}

