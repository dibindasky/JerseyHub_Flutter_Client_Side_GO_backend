import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/wish_list/wish_list_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';

class FavButton extends StatelessWidget {
  FavButton({
    super.key,
    required this.isFav,
    required this.id,
  });

  bool isFav;
  final int id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isFav
            ? context
                .read<WishListBloc>()
                .add(WishListEvent.removeFromWishList(id: id))
            : context
                .read<WishListBloc>()
                .add(WishListEvent.addToWishList(id: id));
        isFav=!isFav;
      },
      child: CircleAvatar(
        backgroundColor: kWhite,
        child: isFav
            ? Icon(Icons.favorite, color: kRed.withOpacity(0.9))
            : const Icon(Icons.favorite_border_outlined),
      ),
    );
  }
}
