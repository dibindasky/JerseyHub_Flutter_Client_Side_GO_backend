import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/user/address/add_address_model/add_address_model.dart';
import 'package:jerseyhub/domain/models/user/address/get_address_response_model/address.dart';
import 'package:jerseyhub/domain/models/user/details/change_email/change_email.dart';
import 'package:jerseyhub/domain/models/user/details/change_name/change_name.dart';
import 'package:jerseyhub/domain/models/user/details/change_phone_number/change_phone_number.dart';
import 'package:jerseyhub/domain/models/user/security/change_password/change_password.dart';
import 'package:jerseyhub/domain/models/user/user_details_response_model/user_detail.dart';
import 'package:jerseyhub/domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final TextEditingController changeNameController = TextEditingController();
  final TextEditingController changeEmailController = TextEditingController();
  final TextEditingController changePhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController houseController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  Address? defaultAddress;

  final UserRepository userRepository;

  UserBloc(this.userRepository) : super(UserState.initial()) {
    on<_GetDetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.getUserDetails(
          tokenModel: tokenModel, idQurrey: IdQurrey(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false, hasError: true, message: 'refresh your page')),
          (userDetailsResponsModel) => emit(state.copyWith(
              isLoading: false, userDetail: userDetailsResponsModel.data)));
    });
    on<_GetAddress>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.getAddress(
          tokenModel: tokenModel, idQurrey: IdQurrey(id: tokenModel.userId));
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'refresh your page')), (getAddressResponsModel) {
        defaultAddress = getAddressResponsModel.data != null &&
                getAddressResponsModel.data!.isNotEmpty
            ? getAddressResponsModel.data!
                .firstWhere((element) => element.addressDefault!)
            : null;
        emit(state.copyWith(
            isLoading: false, address: getAddressResponsModel.data));
      });
    });
    on<_AddAddress>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.addAddress(
          tokenModel: tokenModel,
          idQurrey: IdQurrey(id: tokenModel.userId),
          addAddressModel: event.addAddressModel);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'address not updated, try again')), (success) {
        emit(state.copyWith(
            isLoading: false,
            isDone: true,
            message: 'address updated successfully'));
        nameController.clear;
        houseController.clear();
        streetController.clear();
        cityController.clear();
        stateController.clear();
        phoneController.clear();
        pinController.clear();
        add(_GetAddress());
      });
    });
    on<_ChangeEmail>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changeEmail(
          tokenModel: tokenModel,
          idQurrey: IdQurrey(id: tokenModel.userId),
          changeEmail: event.changeEmail);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'Email not updated, try again')), (success) {
        changeEmailController.clear();
        emit(state.copyWith(
            isLoading: false,
            isDone: true,
            message: 'Email updated successfully'));
        add(const _GetDetails());
      });
    });
    on<_ChangePhone>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changePhone(
          tokenModel: tokenModel,
          idQurrey: IdQurrey(id: tokenModel.userId),
          changePhoneNumber: event.changePhone);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'Phone Number not updated, try again')), (success) {
        changePhoneController.clear();
        emit(state.copyWith(
            isDone: true, message: 'Phone Number updated successfully'));
        add(const _GetDetails());
      });
    });
    on<_ChangeName>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changeName(
          tokenModel: tokenModel,
          idQurrey: IdQurrey(id: tokenModel.userId),
          changeName: event.changeName);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'Name not updated, try again')), (success) {
        changeNameController.clear();
        emit(
            state.copyWith(isDone: true, message: 'Name updated successfully'));
        add(const _GetDetails());
      });
    });
    on<_ChangePassword>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, isDone: false));
      final tokenModel = await SharedPref.getToken();
      final result = await userRepository.changePassword(
          tokenModel: tokenModel,
          idQurrey: IdQurrey(id: tokenModel.userId),
          changePassword: event.changePassword);
      result.fold(
          (failure) => emit(state.copyWith(
              isLoading: false,
              hasError: true,
              message: 'Password not updated, try again')),
          (success) => emit(state.copyWith(
              isLoading: false,
              isDone: true,
              message: 'Password updated successfully')));
    });
    on<_ShowList>(
        (event, emit) => emit(state.copyWith(showList: !state.showList)));
    on<_SetDefault>((event, emit) {
      defaultAddress = event.address;
      emit(state.copyWith(showList: !state.showList));
    });
  }
}
