import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/services/inventory/inventory.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/inventory/get_individual_inventory_response/get_individual_inventory_response.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:jerseyhub/domain/models/inventory/page_qurrey_get_inventory/page_qurrey_get_inventory.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final InventoryApi inventoryApi;

  InventoryBloc(this.inventoryApi) : super(InventoryState.initial()) {
    on<_GetInventories>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await inventoryApi.getInventorys(
          pageQurreyGetInventory: event.pageQurreyGetInventory,
          tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'something went wrong, refresh page again')),
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false,
              getInventoryResponseModel: getInventoryResponseModel)));
    });

    on<_GetInventoryDetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await inventoryApi.getInventoryDetails(
          idQurrey: IdQurrey(id: event.id), tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'something went wrong, refresh page again')),
          (getIndividualInventoryResponse) => emit(state.copyWith(
              isLoading: false,
              getIndividualInventoryResponse: getIndividualInventoryResponse)));
    });
  }
}
