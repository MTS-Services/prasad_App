import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_service_controller.dart';

class OperatorServiceView extends GetView<OperatorServiceController> {
  const OperatorServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorServiceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorServiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
