import 'package:json_annotation/json_annotation.dart';

import 'user_detail.dart';

part 'user_details_response_model.g.dart';

@JsonSerializable()
class UserDetailsResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  UserDetail? data;
  dynamic error;

  UserDetailsResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory UserDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$UserDetailsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDetailsResponseModelToJson(this);
}
