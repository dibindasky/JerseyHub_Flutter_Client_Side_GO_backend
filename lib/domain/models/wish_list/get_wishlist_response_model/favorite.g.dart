// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Favorite _$FavoriteFromJson(Map<String, dynamic> json) => Favorite(
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      image: json['image'] as String?,
      productName: json['product_name'] as String?,
      size: json['size'] as String?,
      stock: json['stock'] as int?,
      price: json['price'] as int?,
      isFav: json['if_present_at_wishlist'] as bool?,
      isInCart: json['if_present_at_cart'] as bool?,
      discountedPrice: (json['discounted_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FavoriteToJson(Favorite instance) => <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'image': instance.image,
      'product_name': instance.productName,
      'size': instance.size,
      'stock': instance.stock,
      'price': instance.price,
      'if_present_at_wishlist': instance.isFav,
      'if_present_at_cart': instance.isInCart,
      'discounted_price': instance.discountedPrice,
    };
