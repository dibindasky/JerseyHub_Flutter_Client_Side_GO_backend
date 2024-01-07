import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/banner/get_banner_response_model/banner.dart';
import 'package:jerseyhub/domain/models/category/get_category_response_model/category.dart';
import 'package:jerseyhub/domain/repositories/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  Map<String, int> categoryMap = {};

  HomeBloc(this.homeRepository) : super(HomeState.initial()) {
    on<_GetBanner>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, expired: false));
      final tokenModel = await SharedPref.getToken();
      final result = await homeRepository.getBanners(tokenModel: tokenModel);
      result.fold((failure) {
        if (failure.statusCode == 401) {
          return emit(state.copyWith(expired: true));
        }
        emit(state.copyWith(
            isLoading: false,
            hasError: true,
            message: 'please refresh your application'));
      }, (getBannerResponseModel) {
        emit(state.copyWith(
            isLoading: false, banners: getBannerResponseModel.data));
      });
    });

    on<_GetCategory>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await homeRepository.getCategorys(tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'please refresh your application')),
          (getCategoryResponseModel) {
        if (getCategoryResponseModel.data != null) {
          for (var item in getCategoryResponseModel.data!) {
            categoryMap[item.category!] = item.id!;
          }
        }
        emit(state.copyWith(
            isLoading: false, categoeries: getCategoryResponseModel.data));
      });
    });
  }
}
