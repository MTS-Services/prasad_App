import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_profile_controller.dart';

class OperatorProfileView extends GetView<OperatorProfileController> {
  const OperatorProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorProfileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
