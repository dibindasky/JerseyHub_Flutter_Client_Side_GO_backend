// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wishlist_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWishlistResponseModel _$GetWishlistResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetWishlistResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Favorite.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$GetWishlistResponseModelToJson(
        GetWishlistResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
