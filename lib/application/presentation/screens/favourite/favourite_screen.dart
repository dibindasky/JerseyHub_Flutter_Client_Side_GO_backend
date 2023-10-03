import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/favourite/widget/favourite_tile.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenFavourite extends StatelessWidget {
  const ScreenFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.75,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const FavouriteTile();
            },
            childCount: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: sWidth * 0.30),
        )
      ],
    );
  }
}
