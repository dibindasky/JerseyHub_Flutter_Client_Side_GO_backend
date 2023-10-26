import 'package:json_annotation/json_annotation.dart';

part 'change_name.g.dart';

@JsonSerializable()
class ChangeName {
  String? name;

  ChangeName({this.name});

  factory ChangeName.fromJson(Map<String, dynamic> json) {
    return _$ChangeNameFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangeNameToJson(this);
}
