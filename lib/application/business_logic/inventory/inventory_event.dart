part of 'inventory_bloc.dart';

@freezed
class InventoryEvent with _$InventoryEvent {
  const factory InventoryEvent.getInventories({required PageQurreyGetInventory pageQurreyGetInventory}) = _GetInventories;
  const factory InventoryEvent.getInventoryDetails({required int id}) = _GetInventoryDetails;
}