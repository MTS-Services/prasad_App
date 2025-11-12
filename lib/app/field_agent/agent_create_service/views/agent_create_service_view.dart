import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_dropdown_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_field_login.dart';

import '../controllers/agent_create_service_controller.dart';

class AgentCreateServiceView extends GetView<AgentCreateServiceController> {
  const AgentCreateServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Service', style: AppTextStyles.bold32),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Column(
            children: [
              CustomTextFieldLogin(
                labelText: "Service Title",
                hintText: "Agro Drone Service",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
