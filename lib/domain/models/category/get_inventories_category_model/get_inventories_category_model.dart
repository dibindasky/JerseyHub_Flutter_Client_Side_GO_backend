import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_inventories_category_model.g.dart';

@JsonSerializable()
class GetInventoriesCategoryModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Inventory>? data;
  dynamic error;

  GetInventoriesCategoryModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetInventoriesCategoryModel.fromJson(Map<String, dynamic> json) {
    return _$GetInventoriesCategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetInventoriesCategoryModelToJson(this);
}
