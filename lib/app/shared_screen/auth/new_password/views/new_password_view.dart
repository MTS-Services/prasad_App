import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import 'package:prasad/app/shared_screen/common_widget/show_password_row.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../common_widget/custom_text_field_login.dart';
import '../controllers/new_password_controller.dart';

class NewPasswordView extends GetView<NewPasswordController> {
  const NewPasswordView({super.key});

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
                  "Create New Password",
                  style: AppTextStyles.bold40,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '',
                  style: AppTextStyles.regular20,
                  textAlign: TextAlign.center,
                ),
                CustomTextFieldLogin(name: 'Password', hintText: '******'),
                CustomTextFieldLogin(
                  name: 'Confirm Password',
                  hintText: '******',
                ),
                Obx(
                  () => ShowPasswordRow(
                    isChecked: controller.check.value,
                    onChanged: controller.showPassword,
                  ),
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: "Update Password",
                  outlineText: "Back",
                  elevatedOnPressed: () => Get.toNamed(Routes.LOGIN),
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
