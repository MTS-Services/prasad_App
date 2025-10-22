import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_fleet_controller.dart';

class OperatorFleetView extends GetView<OperatorFleetController> {
  const OperatorFleetView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorFleetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorFleetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
