import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../controllers/waiting_approval_controller.dart';

class WaitingApprovalView extends GetView<WaitingApprovalController> {
  const WaitingApprovalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.waitingImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20.h,
            children: [
              Text(
                'Waiting for confirmation approval',
                style: AppTextStyles.bold40.copyWith(color: AppColors.whiteColor),
                textAlign: TextAlign.center,
              ),
              Text(
                "Please wait while we verify your information",
                style: AppTextStyles.regular20.copyWith(
                  color: AppColors.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.AGENT_HOME),
                  child: Text('Go To Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
