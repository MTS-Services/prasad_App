import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/onboarding3_controller.dart';

class Onboarding3View extends GetView<Onboarding3Controller> {
  const Onboarding3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.onboarding3),
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
                'Find Your Next Opportunity, Right Where You Are',
                style: AppTextStyles.medium20.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                'Discover jobs within 50 KM of your location — fast, easy, and tailored for you.',
                style: AppTextStyles.regular14.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor,
                    foregroundColor: AppColors.blackColor,
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.SIGN_UP);
                  },
                  child: Text('Registration'),
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
