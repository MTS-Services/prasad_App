import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operetor_equipment_details_controller.dart';

class OperetorEquipmentDetailsView
    extends GetView<OperetorEquipmentDetailsController> {
  const OperetorEquipmentDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperetorEquipmentDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperetorEquipmentDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
