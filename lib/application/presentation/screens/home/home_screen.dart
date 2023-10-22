import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

import '../../widgets/custom_search_field.dart';
import 'widgets/monthly_offer_board.dart';
import 'widgets/popular_catogory_row.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CoustomSearchField(),
              kHeight10,
              const PopularCatogories(),
              kHeight10,
              const MonthlyOfferBoard(),
              Row(
                children: [
                  kWidth10,
                  const Text(
                    'Popular Products',
                    style: headStyle,
                  ),
                  const Spacer(),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Text('See All'),
                    label: const Icon(Icons.keyboard_arrow_right_sharp),
                  ),
                ],
              ),
            ],
          ),
        ),
        // SliverGrid(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     childAspectRatio: 1 / 1.5,
        //     mainAxisSpacing: 10,
        //     crossAxisSpacing: 20,
        //     crossAxisCount: 2,
        //   ),
        //   delegate: SliverChildBuilderDelegate(
        //     (context, index) {
        //       return const InventoryTile();
        //     },
        //     childCount: 4,
        //   ),
        // ),
        SliverToBoxAdapter(
          child: SizedBox(height: sWidth * 0.20),
        )
      ],
    );
  }
}
