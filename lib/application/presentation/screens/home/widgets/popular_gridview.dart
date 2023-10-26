import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

class PopularGridView extends StatelessWidget {
  const PopularGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        SizedBox(
          height: sWidth * 1.50,
          child: BlocBuilder<InventoryBloc, InventoryState>(
              buildWhen: (previous, current) =>
                  previous.getInventoryResponseModel !=
                  current.getInventoryResponseModel,
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingAnimation(width: 0.20);
                }
                if (state.getInventoryResponseModel != null) {
                  return GridView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.5,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 20),
                      itemBuilder: (context, index) => InventoryTile(
                          inventory:
                              state.getInventoryResponseModel!.data![index]));
                } else {
                  return const Text('Nothing to show');
                }
              }),
        ),
      ],
    );
  }
}
