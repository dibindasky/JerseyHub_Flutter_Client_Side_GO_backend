import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub/application/business_logic/wish_list/wish_list_bloc.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';

class FavButton extends StatefulWidget {
  FavButton({
    super.key,
    required this.isFav,
    required this.id,
  });

  bool isFav;
  final int id;

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isFav
            ? context
                .read<WishListBloc>()
                .add(WishListEvent.removeFromWishList(id: widget.id))
            : context
                .read<WishListBloc>()
                .add(WishListEvent.addToWishList(id: widget.id));
        widget.isFav = !widget.isFav;
        setState(() {});
      },
      child: CircleAvatar(
        backgroundColor: kWhite,
        child: widget.isFav
            ? Icon(Icons.favorite, color: kRed.withOpacity(0.9))
            : const Icon(Icons.favorite_border_outlined),
      ),
    );
  }
}
