part of 'wish_list_bloc.dart';

@freezed
class WishListState with _$WishListState {
  const factory WishListState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      GetWishlistResponseModel? getWishlistResponseModel}) = _Initial;

  factory WishListState.initial()=>const WishListState(isLoading: false, hasError: false, isDone: false);
}
