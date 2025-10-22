import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_payment_controller.dart';

class OperatorPaymentView extends GetView<OperatorPaymentController> {
  const OperatorPaymentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorPaymentView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorPaymentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
