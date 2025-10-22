import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/customer_service_controller.dart';

class CustomerServiceView extends GetView<CustomerServiceController> {
  const CustomerServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerServiceView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomerServiceView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
