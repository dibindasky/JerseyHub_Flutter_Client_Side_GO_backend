import 'package:json_annotation/json_annotation.dart';

part 'change_phone_number.g.dart';

@JsonSerializable()
class ChangePhoneNumber {
  String? phone;

  ChangePhoneNumber({this.phone});

  factory ChangePhoneNumber.fromJson(Map<String, dynamic> json) {
    return _$ChangePhoneNumberFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangePhoneNumberToJson(this);
}
