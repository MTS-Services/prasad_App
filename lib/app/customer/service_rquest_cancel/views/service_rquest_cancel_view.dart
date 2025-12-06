import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_rquest_cancel_controller.dart';

class ServiceRquestCancelView extends GetView<ServiceRquestCancelController> {
  const ServiceRquestCancelView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServiceRquestCancelView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ServiceRquestCancelView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
