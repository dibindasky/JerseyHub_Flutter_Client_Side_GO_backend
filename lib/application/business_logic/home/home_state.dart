part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      List<Banner>? banners,
      List<Category>? categoeries}) = _Initial;

  factory HomeState.initial()=>const HomeState(isLoading: false, hasError: false);    
}
