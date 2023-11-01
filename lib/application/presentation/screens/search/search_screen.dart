import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

import '../../widgets/custom_search_field.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Row(
              children: [
                const Flexible(flex: 6, child: CoustomSearchField()),
                Flexible(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ),
              ],
            ),
          ),
          // AnimatedBox(isSort: isSort),
          BlocBuilder<InventoryBloc, InventoryState>(
            builder: (context, state) {
              if (state.inventories == null ||
                  state.inventories == null ||
                  state.inventories!.isEmpty){
                    return const Center(child: Text('No data available'),);
                  }
                return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.inventories!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.5,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 20),
                    itemBuilder: (context, index) => InventoryTile(
                        inventory:
                            state.inventories![index]));
            },
          ),
          SizedBox(height: sWidth * 0.20)
        ],
      ),
    );
  }
}
