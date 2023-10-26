import 'package:json_annotation/json_annotation.dart';

part 'change_email.g.dart';

@JsonSerializable()
class ChangeEmail {
  String? email;

  ChangeEmail({this.email});

  factory ChangeEmail.fromJson(Map<String, dynamic> json) {
    return _$ChangeEmailFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangeEmailToJson(this);
}
