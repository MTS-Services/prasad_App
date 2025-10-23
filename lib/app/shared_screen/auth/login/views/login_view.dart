import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';

import '../../../common_widget/custom_text_field_login.dart';
import '../controllers/login_controller.dart';
import '../widget/login_icon.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

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
                Text(
                  'Sign In',
                  style: AppTextStyles.bold40,
                ),
                Text(
                  "Hi! Welcome back, you've been missed",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular20,
                ),
                CustomTextFieldLogin(
                  name: 'Email',
                  hintText: 'example@gmail.com',
                ),
                CustomTextFieldLogin(
                  name: 'Password',
                  hintText: 'Aex@8465',
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.RECOVERY_PASS),
                  child: Align(
                    alignment: AlignmentGeometry.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Log In"),
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
                  child: Text('Or sign in with',style: AppTextStyles.regular16,),
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
                        "Don't have an account? ",
                        style: AppTextStyles.regular16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.SIGN_UP);
                        },
                        child: Text(
                          "Sign Up",
                          style: AppTextStyles.medium16.copyWith(
                            color: AppColors.primaryColor,
                            overflow: TextOverflow.ellipsis,
                          ),
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

