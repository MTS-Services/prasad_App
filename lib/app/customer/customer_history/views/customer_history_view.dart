import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/customer_history_controller.dart';

class CustomerHistoryView extends GetView<CustomerHistoryController> {
  const CustomerHistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerHistoryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomerHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
