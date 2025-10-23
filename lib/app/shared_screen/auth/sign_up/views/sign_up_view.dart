import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../data/image_path.dart';
import '../../../../routes/app_pages.dart';
import '../../../common_widget/custom_text_field_login.dart';
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
              spacing: 20.h,
              children: [
                SizedBox(height: 10.h,),
                Text(
                  'Sign Up',
                  style: AppTextStyles.bold40,
                ),
                Text(
                  "Hi! Welcome",
                  style: AppTextStyles.regular20,
                ),
                CustomTextFieldLogin(
                  name: 'Email',
                  hintText: 'example@gmail.com',
                ),

                SizedBox(height: 10.h),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.GMAIL_VERIFY);
                          },
                          child: Text("Next"),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 55,
                      height: 48,
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                        color: AppColors.borderColorGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Image.asset(ImagePath.finger),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColors.borderColorGrey,
                          thickness: 1,
                          indent: 12,
                        ),
                      ),
                      Text('  Or sign in with',style: AppTextStyles.regular16,),
                      Expanded(
                        child: Divider(
                          color: AppColors.borderColorGrey,
                          thickness: 1,
                          indent: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginIcon(image: ImagePath.google,),
                      SizedBox(width: 10.w),
                      LoginIcon(image: ImagePath.appleIcon,),
                      SizedBox(width: 10.w),
                      LoginIcon(image: ImagePath.facebook,),
                    ],
                  ),
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
                          ),maxLines: 1,
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
