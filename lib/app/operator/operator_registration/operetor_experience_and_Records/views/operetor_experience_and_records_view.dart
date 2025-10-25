import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/operetor_experience_and_records_controller.dart';

class OperetorExperienceAndRecordsView
    extends GetView<OperetorExperienceAndRecordsController> {
  const OperetorExperienceAndRecordsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperetorExperienceAndRecordsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OperetorExperienceAndRecordsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
