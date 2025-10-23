import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../common_widget/custom_text_field_login.dart';
import '../controllers/confirm_your_gmail_controller.dart';

class ConfirmYourGmailView extends GetView<ConfirmYourGmailController> {
  const ConfirmYourGmailView({super.key});
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
                Text("Confirm Your Gmail", style: AppTextStyles.bold40,textAlign: TextAlign.center,),
                Text(
                  'We have sent a code in an Email message to ex***@gmaol.co TO confirm your account. enter your code.',
                  style: AppTextStyles.regular20,
                  textAlign: TextAlign.center,
                ),
                CustomTextFieldLogin(
                  name: 'Code',
                  hintText: '123456',
                ),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: AlignmentGeometry.topRight,
                    child: Text(
                      'Resent',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                Column(
                  spacing: 16.w,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.toNamed(Routes.NEW_PASSWORD),
                        child: Text("Verify"),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(),
                        child: Text('Back'),
                      ),
                    ),
                  ],
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
