part of 'inventory_bloc.dart';

@freezed
class InventoryState with _$InventoryState {
  const factory InventoryState(
      {required bool isLoading,
      required bool hasError,
      String? message,
      GetIndividualInventoryResponse? getIndividualInventoryResponse,
      List<Inventory>? inventories}) = _Initial;

  factory InventoryState.initial() =>
      const InventoryState(isLoading: true, hasError: false);
}
