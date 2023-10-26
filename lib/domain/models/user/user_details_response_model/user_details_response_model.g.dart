// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsResponseModel _$UserDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    UserDetailsResponseModel(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserDetail.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$UserDetailsResponseModelToJson(
        UserDetailsResponseModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
