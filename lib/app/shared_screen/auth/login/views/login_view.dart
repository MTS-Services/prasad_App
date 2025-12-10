import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/auth/user_type/widget/type_card.dart';

import '../../../common_widget/custom_text_from_field.dart';
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
              spacing: 16.h,
              children: [
                SizedBox(height: 20.h),
                Text(
                  "Hi! Welcome back! ",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular20,
                ),
                Text('Sign In Using', style: AppTextStyles.bold40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginIcon(image: ImagePath.google),
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
                  controller: controller.emailController,
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                ),
                Obx(
                  () => CustomTextFormField(
                    controller: controller.passwordController,
                    labelText: 'Password',
                    hintText: 'Aex@8465',
                    obscureText: controller.select.value,
                    onTap: () {
                      controller.toggle();
                    },
                    suffixIcon: controller.select.value
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.RECOVERY_PASS),
                  child: Align(
                    alignment: Alignment.topRight,
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
                          onPressed: () {
                            final email = controller.emailController.text
                                .trim();
                            final password = controller.passwordController.text
                                .trim();
                            if (email == "customer@gmail.com" &&
                                password == "123456") {
                              Get.offAllNamed(Routes.CUSTOMER_INFO1);
                            } else if (email == "operator@gmail.com" &&
                                password == "123456") {
                              Get.offAllNamed(Routes.OPERATOR_INFO1);
                            } else if (email == "agent@gmail.com" &&
                                password == "123456") {
                              Get.offAllNamed(Routes.AGENT_REGISTRATION1);
                            } else {
                              Get.snackbar(
                                "Login Failed",
                                "Invalid email or password",
                                backgroundColor: Colors.redAccent,
                                colorText: Colors.white,
                              );
                            }
                          },
                          child: Text("Sing In"),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      width: 55.w,
                      height: 48.h,
                      padding: const EdgeInsets.all(12),
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
                          "Registration",
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
