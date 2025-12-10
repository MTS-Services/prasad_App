import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../../../../routes/app_pages.dart';
import '../../../common_widget/custom_text_from_field.dart';
import '../../login/widget/login_icon.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12.h,
              children: [
                Text('Registration', style: AppTextStyles.bold40),
                Text(
                  "Welcome to Hindustan Drone Services",
                  style: AppTextStyles.medium20.copyWith(
                    color: AppColors.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.h),
                CustomTextFormField(
                  labelText: "Phone",
                  hintText: "Enter your Phone Number",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginIcon(image: ImagePath.google),
                    SizedBox(width: 10.w),
                    LoginIcon(image: ImagePath.facebook),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColors.blackColor,
                          thickness: 1,
                          indent: 12,
                        ),
                      ),
                      Text(' Or', style: AppTextStyles.regular16),
                      Expanded(
                        child: Divider(
                          color: AppColors.blackColor,
                          thickness: 1,
                          indent: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                ),
                CustomTextFormField(labelText: 'Password', hintText: '*****'),
                CustomTextFormField(
                  labelText: 'Confirm Password',
                  hintText: '*******',
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.GMAIL_VERIFY);
                    },
                    child: Text("Next"),
                  ),
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        "Already have an account? ",
                        style: AppTextStyles.regular16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text(
                          "Sign In",
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.primaryColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
