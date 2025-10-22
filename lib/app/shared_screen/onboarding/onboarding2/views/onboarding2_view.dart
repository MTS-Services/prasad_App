import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/onboarding2_controller.dart';

class Onboarding2View extends GetView<Onboarding2Controller> {
  const Onboarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.onboarding2),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 20.h,
            children: [
              Text(
                'Smart Farming with Drones',
                style: AppTextStyles.medium20.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                'Protect your crops with precision spraying. Get real-time insights on crop health, field size, and yield estimation.',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.ONBOARDING3);
                  },
                  child: Text('Next'),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
