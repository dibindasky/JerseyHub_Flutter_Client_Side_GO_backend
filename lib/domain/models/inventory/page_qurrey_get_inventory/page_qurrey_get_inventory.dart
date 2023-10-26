import 'package:json_annotation/json_annotation.dart';

part 'page_qurrey_get_inventory.g.dart';

@JsonSerializable()
class PageQurreyGetInventory {
  int? page;

  PageQurreyGetInventory({this.page});

  factory PageQurreyGetInventory.fromJson(Map<String, dynamic> json) {
    return _$PageQurreyGetInventoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageQurreyGetInventoryToJson(this);
}
