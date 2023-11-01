import 'package:json_annotation/json_annotation.dart';

part 'cart_quantity_update_qurrey.g.dart';

@JsonSerializable()
class CartQuantityUpdateQurrey {
  @JsonKey(name: 'id')
  int cartId;
  @JsonKey(name: 'inventory')
  int inventory;

  CartQuantityUpdateQurrey({required this.cartId, required this.inventory});

  factory CartQuantityUpdateQurrey.fromJson(Map<String, dynamic> json) {
    return _$CartQuantityUpdateQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartQuantityUpdateQurreyToJson(this);
}
