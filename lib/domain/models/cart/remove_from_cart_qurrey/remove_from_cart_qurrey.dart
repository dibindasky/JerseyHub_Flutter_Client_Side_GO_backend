import 'package:json_annotation/json_annotation.dart';

part 'remove_from_cart_qurrey.g.dart';

@JsonSerializable()
class RemoveFromCartQurrey {
  @JsonKey(name: 'cart_id')
  int cartId;
  @JsonKey(name: 'inventory_id')
  int inventoryId;

  RemoveFromCartQurrey({required this.cartId, required this.inventoryId});

  factory RemoveFromCartQurrey.fromJson(Map<String, dynamic> json) {
    return _$RemoveFromCartQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RemoveFromCartQurreyToJson(this);
}
