part of 'wish_list_bloc.dart';

@freezed
class WishListEvent with _$WishListEvent {
  const factory WishListEvent.getWishList() = _GetWishList;
  const factory WishListEvent.addToWishList({required int id}) = _AddToWishList;
  const factory WishListEvent.removeFromWishList({required int id}) = _RemoveFromWishList;
}