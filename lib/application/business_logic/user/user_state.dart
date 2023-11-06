part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState(
      {required bool isLoading,
      required bool hasError,
      required bool isDone,
      String? message,
      required bool showList,
      UserDetail? userDetail,
      List<Address?>? address}) = _Initial;

  factory UserState.initial() =>
      const UserState(isLoading: true, hasError: false, isDone: false,showList: false);
}
