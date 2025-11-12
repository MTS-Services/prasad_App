import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fingure_print_controller.dart';

class FingurePrintView extends GetView<FingurePrintController> {
  const FingurePrintView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FingurePrintView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FingurePrintView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
