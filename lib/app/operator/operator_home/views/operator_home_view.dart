import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_home_controller.dart';

class OperatorHomeView extends GetView<OperatorHomeController> {
  const OperatorHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorHomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorHomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
