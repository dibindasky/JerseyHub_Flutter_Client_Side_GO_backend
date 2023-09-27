import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/colors.dart';

class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kGrey,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.shopping_bag),
      ),
    );
  }
}
