import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../controllers/operetor_waiting_confirmation_controller.dart';

class OperetorWaitingConfirmationView
    extends GetView<OperetorWaitingConfirmationController> {
  const OperetorWaitingConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 30,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Waiting for confirmation approval',
                style: AppTextStyles.bold40,
                textAlign: TextAlign.center,
              ),
              Text(
                'Please wait while we verify your information',
                style: AppTextStyles.regular20,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAllNamed(Routes.OPERATOR_BOTTOM_NAVI_BAR),
                  child: Text("Go to Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
