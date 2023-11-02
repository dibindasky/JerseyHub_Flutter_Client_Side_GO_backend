import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/home/home_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/category/widgets/category_list_view.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
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
  const ScreenCategory({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InventoryBloc>().add(InventoryEvent.getCategoryInventories(
          idQurrey: IdQurrey(id: context.read<HomeBloc>().categoryMap[title])));
    });
    return Scaffold(
      appBar: appbarMaker(title: title, cart: true),
      body: const CatogoryListViews(),
    );
  }
}
