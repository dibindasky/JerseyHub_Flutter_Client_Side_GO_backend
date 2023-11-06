part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getDetails() = _GetDetails;
  const factory UserEvent.showList() = _ShowList;
  const factory UserEvent.setDefault({required Address address}) = _SetDefault;
  factory UserEvent.getAddress() = _GetAddress;
  factory UserEvent.addAddress({required AddAddressModel addAddressModel}) =
      _AddAddress;
  factory UserEvent.changeEmail({required ChangeEmail changeEmail}) =
      _ChangeEmail;
  factory UserEvent.changeName({required ChangeName changeName}) = _ChangeName;
  factory UserEvent.changePhone({required ChangePhoneNumber changePhone}) =
      _ChangePhone;
  factory UserEvent.changePassword({required ChangePassword changePassword}) =
      _ChangePassword;
}
