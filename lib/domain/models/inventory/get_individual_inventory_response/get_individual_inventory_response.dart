import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_individual_inventory_response.g.dart';

@JsonSerializable()
class GetIndividualInventoryResponse {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetIndividualInventoryResponse({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory GetIndividualInventoryResponse.fromJson(Map<String, dynamic> json) {
    return _$GetIndividualInventoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetIndividualInventoryResponseToJson(this);
  }
}
