import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/category/widgets/category_list_container.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';

class CatogoryListViews extends StatelessWidget {
  const CatogoryListViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<InventoryBloc, InventoryState>(
          builder: (context, state) {
            if(state.isLoading){
              return const LoadingAnimation(width: 0.20);
            }if(state.hasError || state.inventories == null){
              return const Center(child: Text('Nothing to show '));
            }
            return ListView.builder(
                itemCount: state.inventories!.length,
                itemBuilder: (context, index) =>
                    CategoryDetailContainer(inventory: state.inventories![index],));
          },
        ),
      ),
    );
  }
}
