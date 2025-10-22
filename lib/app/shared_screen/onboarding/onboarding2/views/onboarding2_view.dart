import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding2_controller.dart';

class Onboarding2View extends GetView<Onboarding2Controller> {
  const Onboarding2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Onboarding2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
