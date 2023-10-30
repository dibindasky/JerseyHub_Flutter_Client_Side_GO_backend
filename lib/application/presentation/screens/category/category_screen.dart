import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/category/widgets/category_list_view.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

final inventory = Inventory(
  categoryId: 0,
  discountedPrice: 12,
  id: 0,
  image: manjestCity,
  isFav: false,
  isInCart: false,
  price: 100,
  productName: 'Messi Jersey',
  size: 'M',
  stock: 12,
);

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Football', cart: true),
      body: const CatogoryListViews(),
    );
  }
}
