import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.w,),
              Text(
                'Welcome Back!',
                style: AppTextStyles.bold40.copyWith(color: AppColors.primaryColor),
              ),
              Container(
                width: 240,
                height: 240,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagePath.login_logo),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30000),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
