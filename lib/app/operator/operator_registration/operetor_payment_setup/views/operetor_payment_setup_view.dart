import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operetor_payment_setup_controller.dart';

class OperetorPaymentSetupView extends GetView<OperetorPaymentSetupController> {
  const OperetorPaymentSetupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperetorPaymentSetupView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperetorPaymentSetupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
