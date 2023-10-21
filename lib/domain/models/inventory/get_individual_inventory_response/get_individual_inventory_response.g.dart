// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_individual_inventory_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetIndividualInventoryResponse _$GetIndividualInventoryResponseFromJson(
        Map<String, dynamic> json) =>
    GetIndividualInventoryResponse(
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetIndividualInventoryResponseToJson(
        GetIndividualInventoryResponse instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
