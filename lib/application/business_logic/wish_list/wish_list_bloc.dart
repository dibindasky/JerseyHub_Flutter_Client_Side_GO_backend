import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/wish_list/add_to_wish_list/add_to_wish_list.dart';
import 'package:jerseyhub/domain/models/wish_list/get_wishlist_response_model/get_wishlist_response_model.dart';
import 'package:jerseyhub/domain/models/wish_list/remove_from_wish_list_qurrey/remove_from_wish_list_qurrey.dart';
import 'package:jerseyhub/domain/repositories/wish_list_repository.dart';

part 'wish_list_event.dart';
part 'wish_list_state.dart';
part 'wish_list_bloc.freezed.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState> {
  final WishListRepository wishListRepository;

  WishListBloc(this.wishListRepository) : super(WishListState.initial()) {
    on<_GetWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await wishListRepository.getWishlist(
          idQurrey: IdQurrey(id: tokenModel.userId), tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'please refresh, something went wrong')),
          (getWishListResponseModel) {
        emit(state.copyWith(
            getWishlistResponseModel: getWishListResponseModel,
            isLoading: false));
      });
    });

    on<_AddToWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await wishListRepository.addToWishList(
          tokenModel: tokenModel,
          addToWishList:
              AddToWishList(userId: tokenModel.userId, inventoryId: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'something went wrong')),
          (successResponseModel) => emit(state.copyWith(
              isDone: true, message: 'product added to wishlist')));
      add(const WishListEvent.getWishList());
    });

    on<_RemoveFromWishList>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await wishListRepository.removeFromWishList(
          tokenModel: tokenModel,
          idQurrey: RemoveFromWishListQurrey(invId: event.id));
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'something went wrong')),
          (successResponseModel) => emit(state.copyWith(
              hasError: true, message: 'product removed from wishlist')));
      add(const WishListEvent.getWishList());
    });
  }
}
