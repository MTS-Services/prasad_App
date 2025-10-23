import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/customer_info2_controller.dart';

class CustomerInfo2View extends GetView<CustomerInfo2Controller> {
  const CustomerInfo2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerInfo2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CustomerInfo2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
