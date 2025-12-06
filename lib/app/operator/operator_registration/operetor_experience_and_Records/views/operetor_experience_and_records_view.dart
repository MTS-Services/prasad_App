import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_text_from_field.dart';
import '../controllers/operetor_experience_and_records_controller.dart';

class OperetorExperienceAndRecordsView
    extends GetView<OperetorExperienceAndRecordsController> {
  const OperetorExperienceAndRecordsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12.h,
              children: [
                Text('Experience & Records', style: AppTextStyles.bold24),
                Text(
                  'Tell us about your flying experience',
                  style: AppTextStyles.regular16,
                ),
                CustomTextFromField(
                  labelText: 'Total Flight Hours',
                  hintText: 'Enter total flight hours',
                ),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Past projects & events',
                    labelStyle: AppTextStyles.medium16,
                    floatingLabelStyle: AppTextStyles.medium20.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    hintText:
                        'Describe your past drone projects events, or commercial work........',
                  ),
                ),

                FileUploadContainer(
                  onTap: controller.pickImage,
                  image: controller.selectedImage.value,
                  uploadType: 'Upload Drone Flight Records',
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: "Continue",
                  outlineText: "Back",
                  elevatedOnPressed: () =>
                      Get.toNamed(Routes.OPERETOR_PAYMENT_SETUP),
                  outlineOnPressed: () => Get.back(),
                ),
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
