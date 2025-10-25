import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/customer/cutomer_notification/widget/back_button_card.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/data/image_path.dart';

import '../controllers/operator_profile_controller.dart';

class OperatorProfileView extends GetView<OperatorProfileController> {
  const OperatorProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonCard(onTap: () {}),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Image.asset(ImagePath.editIcon, height: 16.h),
                      label: Text(
                        'Edit',
                        style: AppTextStyles.regular14.apply(color: Colors.red),
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
