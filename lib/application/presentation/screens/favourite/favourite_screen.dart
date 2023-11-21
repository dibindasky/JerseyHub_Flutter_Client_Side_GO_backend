import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/inventory/inventory_bloc.dart';
import 'package:jerseyhub/application/business_logic/wish_list/wish_list_bloc.dart';
import 'package:jerseyhub/application/presentation/screens/favourite/widget/favourite_tile.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub/application/presentation/utils/snack_show/show_snack.dart';
import 'package:lottie/lottie.dart';

class ScreenFavourite extends StatelessWidget {
  const ScreenFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WishListBloc>().add(const WishListEvent.getWishList());
    });
    return SingleChildScrollView(
      child: Column(
        children: [
          const FavGridView(),
          SizedBox(height: sWidth * 0.20),
        ],
      ),
    );
  }
}

class FavGridView extends StatelessWidget {
  const FavGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sHeight * 0.80,
      child: BlocConsumer<WishListBloc, WishListState>(
        listener: (context, state) {
          if (state.hasError || state.isDone) {
            showSnack(
                context: context,
                message: state.message ?? 'something went wrong',
                color: state.hasError ? kRed : kGreen,
                time: 1000);
          }
          if (state.isDone) {
            context
                .read<InventoryBloc>()
                .add(const InventoryEvent.getInventories());
          }
        },
        buildWhen: (previous, current) =>
            previous.getWishlistResponseModel !=
            current.getWishlistResponseModel,
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingAnimation(width: 0.20);
          } else if (state.hasError) {
            return const Text('Something went wrong while fetching data');
          } else if (state.getWishlistResponseModel != null) {
            if (state.getWishlistResponseModel!.data == null ||
                state.getWishlistResponseModel!.data!.isEmpty) {
              return Center(child: Lottie.asset('assets/animation/empty_fav.json'),);
            }
            return GridView.builder(
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.75,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) => FavTile(
                  inventory: state.getWishlistResponseModel!.data![index]),
              itemCount: state.getWishlistResponseModel!.data!.length,
            );
          } else {
            return const Text('WishList');
          }
        },
      ),
    );
  }
}
