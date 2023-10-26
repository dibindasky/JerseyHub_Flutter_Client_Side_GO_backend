import 'package:dartz/dartz.dart';
import 'package:jerseyhub/domain/core/failure/failures.dart';
import 'package:jerseyhub/domain/models/id_qurrey/id_qurrey.dart';
import 'package:jerseyhub/domain/models/inventory/get_individual_inventory_response/get_individual_inventory_response.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/get_inventory_response_model.dart';
import 'package:jerseyhub/domain/models/inventory/page_qurrey_get_inventory/page_qurrey_get_inventory.dart';
import 'package:jerseyhub/domain/models/token/token_model.dart';

abstract class InventoryRepository {
  Future<Either<Failure, GetInventoryResponseModel>> getInventorys(
      {required PageQurreyGetInventory pageQurreyGetInventory,
      required TokenModel tokenModel});

  Future<Either<Failure, GetIndividualInventoryResponse>> getInventoryDetails(
      {required IdQurrey idQurrey, required TokenModel tokenModel});
}
