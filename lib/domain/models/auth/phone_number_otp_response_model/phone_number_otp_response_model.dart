import 'package:json_annotation/json_annotation.dart';

part 'phone_number_otp_response_model.g.dart';

@JsonSerializable()
class PhoneNumberOtpResponseModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  PhoneNumberOtpResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  @override
  String toString() {
    return 'PhoneNumberOtpResponseModel(statusCode: $statusCode, message: $message, data: $data, error: $error)';
  }

  factory PhoneNumberOtpResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PhoneNumberOtpResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhoneNumberOtpResponseModelToJson(this);
}
