// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePassword _$ChangePasswordFromJson(Map<String, dynamic> json) =>
    ChangePassword(
      oldPassword: json['old_password'] as String?,
      password: json['password'] as String?,
      rePassword: json['re_password'] as String?,
    );

Map<String, dynamic> _$ChangePasswordToJson(ChangePassword instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'password': instance.password,
      're_password': instance.rePassword,
    };
