import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CoustomSearchField(),
          const Row(
            children: [CircleAvatar(), CircleAvatar()],
          )
        ],
      ),
    );
  }
}

class CoustomSearchField extends StatelessWidget {
  const CoustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
            color: kGrey, borderRadius: BorderRadius.all(kRadius50)),
        width: sWidth * 0.90,
        height: sWidth * 0.10,
        child: TextField(
          onTap: () {
            if(context.read<BottomBarCubitCubit>().state.currentIndex == 0) {
              context.read<BottomBarCubitCubit>().changeIndex(1);
            }
          },
          decoration: InputDecoration(
            label: Text(
              'what are you  looking for?',
              style: TextStyle(fontSize: sWidth * 0.035),
            ),
            border: InputBorder.none,
            prefixIcon: Icon(Iconsax.search_normal_1),
          ),
        ));
  }
}
