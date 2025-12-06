import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.splash),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Smart Farming with Drones',
                textAlign: TextAlign.center,
                style: AppTextStyles.medium20.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(height: 10.h),

              Text(
                'Protect your crops with precision spraying. Get real-time insights on crop health, field size, and yield estimation.',
                textAlign: TextAlign.center,
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
