import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_elevated_and_outline_button.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../common_widget/custom_text_field_login.dart';
import '../controllers/recovery_pass_controller.dart';

class RecoveryPassView extends GetView<RecoveryPassController> {
  const RecoveryPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 30.w,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.w),
                Text(
                  "Forgot Your Password?",
                  style: AppTextStyles.bold40,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Enter your email address. We will send a message with a code to reset your password.',
                  style: AppTextStyles.regular20,
                  textAlign: TextAlign.center,
                ),
                CustomTextFieldLogin(
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: "Next",
                  outlineText: "Back",
                  elevatedOnPressed: () => Get.toNamed(Routes.CONFIRM_YOUR_GMAIL),
                  outlineOnPressed: () => Get.back(),
                ),
                SizedBox(height: 10.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
