import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_from_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_elevated_and_outline_button.dart';

import '../../../../data/app_colors.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/create_pass_controller.dart';

class CreatePassView extends GetView<CreatePassController> {
  const CreatePassView({super.key});

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
                Center(
                  child: Text(
                    "Create Password",
                    style: AppTextStyles.bold40,
                    textAlign: TextAlign.center,
                  ),
                ),
                CustomTextFormField(
                  labelText: 'Password',
                  hintText: 'enter your password',
                ),
                CustomTextFormField(
                  labelText: 'Confirm Password',
                  hintText: 'enter your password',
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: 'Next',
                  outlineText: "Back",
                  elevatedOnPressed: () => Get.toNamed(Routes.CUSTOMER_INFO1),
                  outlineOnPressed: () => Get.back(),
                ),
                SizedBox(height: 10.w),
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
