import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding3_controller.dart';

class Onboarding3View extends GetView<Onboarding3Controller> {
  const Onboarding3View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onboarding3View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Onboarding3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
