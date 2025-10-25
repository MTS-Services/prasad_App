import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operetor_waiting_confirmation_controller.dart';

class OperetorWaitingConfirmationView
    extends GetView<OperetorWaitingConfirmationController> {
  const OperetorWaitingConfirmationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperetorWaitingConfirmationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperetorWaitingConfirmationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
