import 'package:json_annotation/json_annotation.dart';

part 'favorite.g.dart';

@JsonSerializable()
class Favorite {
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  String? image;
  @JsonKey(name: 'product_name')
  String? productName;
  String? size;
  int? stock;
  int? price;
  @JsonKey(name: 'if_present_at_wishlist')
  bool? isFav;
  @JsonKey(name: 'if_present_at_cart')
  bool? isInCart;  @JsonKey(name: 'discounted_price')
  double? discountedPrice;

  Favorite({
    this.id,
    this.categoryId,
    this.image,
    this.productName,
    this.size,
    this.stock,
    this.price,
    this.isFav,
    this.isInCart,
    this.discountedPrice,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}
