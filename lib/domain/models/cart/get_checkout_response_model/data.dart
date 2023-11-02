import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';
import 'package:jerseyhub/domain/models/user/address/get_address_response_model/address.dart';
import 'package:json_annotation/json_annotation.dart';

import 'payment_method.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'CartID')
  int? cartId;
  @JsonKey(name: 'Addresses')
  List<Address>? addresses;
  @JsonKey(name: 'Products')
  List<Inventory>? products;
  @JsonKey(name: 'PaymentMethods')
  List<PaymentMethod>? paymentMethods;
  @JsonKey(name: 'TotalPrice')
  int? totalPrice;
  @JsonKey(name: 'DiscountedPrice')
  int? discountedPrice;

  Data({
    this.cartId,
    this.addresses,
    this.products,
    this.paymentMethods,
    this.totalPrice,
    this.discountedPrice,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
