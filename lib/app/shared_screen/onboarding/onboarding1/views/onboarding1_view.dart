import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding1_controller.dart';

class Onboarding1View extends GetView<Onboarding1Controller> {
  const Onboarding1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding1View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Onboarding1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
