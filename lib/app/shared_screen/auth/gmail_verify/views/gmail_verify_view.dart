import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../../../../routes/app_pages.dart';
import '../../../common_widget/custom_elevated_and_outline_button.dart';
import '../../../common_widget/custom_text_from_field.dart';
import '../../login/widget/login_icon.dart';
import '../controllers/gmail_verify_controller.dart';

class GmailVerifyView extends GetView<GmailVerifyController> {
  const GmailVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea( //SignUP
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 20.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.w),
                Text(
                  "Confirm Your Email",
                  style: AppTextStyles.bold40,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'We have sent a code in an Email message to ex***@gmail.com TO confirm your account. enter your code.',
                  style: AppTextStyles.regular20,
                  textAlign: TextAlign.center,
                ),
                CustomTextFormField(labelText: 'Code', hintText: '123456'),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Resent',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: 'Verify',
                  outlineText: 'Back',
                  elevatedOnPressed: () => Get.toNamed(Routes.LOGIN),
                  outlineOnPressed: () => Get.back(),
                ),
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
