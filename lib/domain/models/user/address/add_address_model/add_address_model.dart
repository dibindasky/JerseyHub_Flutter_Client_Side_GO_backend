import 'package:json_annotation/json_annotation.dart';

part 'add_address_model.g.dart';

@JsonSerializable()
class AddAddressModel {
  String city;
  @JsonKey(name: 'house_name')
  String houseName;
  String name;
  String pin;
  String state;
  String street;
  String phone;

  AddAddressModel({
    required this.city,
    required this.houseName,
    required this.name,
    required this.pin,
    required this.state,
    required this.street,
    required this.phone,
  });

  factory AddAddressModel.fromJson(Map<String, dynamic> json) {
    return _$AddAddressModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddAddressModelToJson(this);
}
