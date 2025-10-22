import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operator_history_controller.dart';

class OperatorHistoryView extends GetView<OperatorHistoryController> {
  const OperatorHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperatorHistoryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperatorHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
