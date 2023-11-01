import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/home/widgets/popular_gridview.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/custom_search_field.dart';

import 'widgets/monthly_offer_board.dart';
import 'widgets/popular_catogory_row.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InventoryBloc>().add(const InventoryEvent.getInventories());
    });
    return SingleChildScrollView(
      child: Column(
        children: [
          const CoustomSearchField(),
          kHeight10,
          const PopularCatogories(),
          kHeight10,
          const MonthlyOfferBoard(),
          const PopularGridView(),
          SizedBox(height: sWidth * 0.150)
        ],
      ),
    );
  }
}
