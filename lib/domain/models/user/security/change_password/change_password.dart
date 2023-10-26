import 'package:json_annotation/json_annotation.dart';

part 'change_password.g.dart';

@JsonSerializable()
class ChangePassword {
  @JsonKey(name: 'old_password')
  String? oldPassword;
  String? password;
  @JsonKey(name: 're_password')
  String? rePassword;

  ChangePassword({this.oldPassword, this.password, this.rePassword});

  factory ChangePassword.fromJson(Map<String, dynamic> json) {
    return _$ChangePasswordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangePasswordToJson(this);
}
