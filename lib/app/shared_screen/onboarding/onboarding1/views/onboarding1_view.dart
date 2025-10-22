import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';

import '../controllers/onboarding1_controller.dart';

class Onboarding1View extends GetView<Onboarding1Controller> {
  const Onboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.rectangle),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 16.h,
            children: [
              Text(
                'Welcome to Smart Drone Services',
                style: AppTextStyles.medium20.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                'Revolutionize your work with drone technology – from farming to real estate, everything made smarter and faster.',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Next', style: AppTextStyles.medium16),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
