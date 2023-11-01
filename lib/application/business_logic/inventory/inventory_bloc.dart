import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jerseyhub/data/shared_preference/shared_pref.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/inventory/get_individual_inventory_response/get_individual_inventory_response.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';
import 'package:jerseyhub/domain/models/inventory/page_qurrey_get_inventory/page_qurrey_get_inventory.dart';
import 'package:jerseyhub/domain/models/inventory/search_model/search_model.dart';
import 'package:jerseyhub/domain/repositories/inventory_repository.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';
part 'inventory_bloc.freezed.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  final InventoryRepository inventoryRepository;
  int page=1;

  InventoryBloc(this.inventoryRepository) : super(InventoryState.initial()) {
    on<_GetInventories>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await inventoryRepository.getInventorys(
          pageQurreyGetInventory: PageQurreyGetInventory(page: page),
          tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
              hasError: true,
              isLoading: false,
              message: 'something went wrong, refresh page again')),
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false,
              inventories: getInventoryResponseModel.data)));
    });

    on<_GetInventoryDetails>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await inventoryRepository.getInventoryDetails(
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

    on<_SearchInventories>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      final tokenModel = await SharedPref.getToken();
      final result = await inventoryRepository.search(
          searchModel: event.searchModel, tokenModel: tokenModel);
      result.fold(
          (failure) => emit(state.copyWith(
                isLoading: false,
              )),
          (getInventoryResponseModel) => emit(state.copyWith(
              isLoading: false,
               inventories: getInventoryResponseModel.data)));
    });
  }
}
