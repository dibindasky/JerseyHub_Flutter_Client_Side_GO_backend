import 'package:json_annotation/json_annotation.dart';

part 'inventory.g.dart';

@JsonSerializable()
class Inventory {
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  String? image;
  @JsonKey(name: 'product_name')
  String? productName;
  String? size;
  int? stock;
  double? price;
  @JsonKey(name: 'if_present_at_wishlist')
  bool? isFav;
  @JsonKey(name: 'if_present_at_cart')
  bool? isInCart;
  @JsonKey(name: 'discounted_price')
  double? discountedPrice;

  Inventory({
    this.id,
    this.categoryId,
    this.image,
    this.productName,
    this.size,
    this.stock,
    this.isFav,
    this.isInCart,
    this.price,
    this.discountedPrice,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryToJson(this);
}
