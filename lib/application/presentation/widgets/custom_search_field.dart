import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/domain/models/inventory/search_model/search_model.dart';

import '../../business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import '../utils/colors.dart';
import '../utils/constant.dart';

class CoustomSearchField extends StatelessWidget {
  const CoustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: kGrey, borderRadius: BorderRadius.all(kRadius50)),
        width: double.infinity,
        height: sWidth * 0.10,
        child: TextField(
          onChanged: (value) {
            context.read<InventoryBloc>().add(InventoryEvent.searchInventories(
                searchModel: SearchModel(searchkey: value)));
          },
          //readOnly: context.read<BottomBarCubitCubit>().state.currentIndex == 0,
          onTap: () {
            if (context.read<BottomBarCubitCubit>().state.currentIndex == 0) {
              context.read<BottomBarCubitCubit>().changeIndex(1);
            }
          },
          decoration: InputDecoration(
            hintText: 'what are you  looking for?',
            border: InputBorder.none,
            prefixIcon: const Icon(Iconsax.search_normal_1),
          ),
        ));
  }
}
