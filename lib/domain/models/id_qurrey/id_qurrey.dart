import 'package:json_annotation/json_annotation.dart';

part 'id_qurrey.g.dart';

@JsonSerializable()
class IdQurrey {
  int? id;

  IdQurrey({this.id});

  factory IdQurrey.fromJson(Map<String, dynamic> json) {
    return _$IdQurreyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IdQurreyToJson(this);
}
