import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/cart_list.dart';
import 'package:jerseyhub/application/presentation/screens/cart/widgets/check_out_bottom_container.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'My Cart'),
      body: const CartItemsList(),
      bottomNavigationBar: const BottomCheckOutSession(),
    );
  }
}
