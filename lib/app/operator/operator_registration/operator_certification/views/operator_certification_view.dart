import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_certification_controller.dart';

class OperatorCertificationView
    extends GetView<OperatorCertificationController> {
  const OperatorCertificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorCertificationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorCertificationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
