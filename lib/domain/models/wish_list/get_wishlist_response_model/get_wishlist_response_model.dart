import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';
import 'package:json_annotation/json_annotation.dart';


part 'get_wishlist_response_model.g.dart';

@JsonSerializable()
class GetWishlistResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  List<Inventory>? data;
  dynamic error;

  GetWishlistResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetWishlistResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetWishlistResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetWishlistResponseModelToJson(this);
}
