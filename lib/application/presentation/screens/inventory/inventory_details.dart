import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/inventory/widgets/available_details.dart';
import 'package:jerseyhub/application/presentation/screens/inventory/widgets/bottom_buttons.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';
import 'package:jerseyhub/application/presentation/widgets/image_show_container.dart';
import 'package:jerseyhub/domain/models/inventory/get_inventory_response_model/inventory.dart';

class ScreenInventoryDetails extends StatelessWidget {
  const ScreenInventoryDetails({super.key, required this.inventory});

  final Inventory inventory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Details'),
      body: ListView(
        children: [
          ImageShowContainer(image: inventory.image!, width: 1),
          InventoryAvailableDetails(inventory: inventory),
        ],
      ),
      bottomNavigationBar: BottomButtonsDetails(inventory: inventory),
    );
  }
}

