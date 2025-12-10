import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_date_picker.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_text_from_field.dart';
import '../../operator_info1/views/operator_info1_view.dart';
import '../../operator_info1/widget/custom_operator_location_field.dart';
import '../controllers/operator_certification_controller.dart';

class OperatorCertificationView
    extends GetView<OperatorCertificationController> {
  const OperatorCertificationView({super.key});

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
                Text(
                  'Add Your License/Certification',
                  style: AppTextStyles.bold24,
                ),
                CustomTextFormField(
                  labelText: 'License Number',
                  hintText: 'Enter your address',
                  controller: controller.licenseNumberController,
                ),
                CustomDatePicker(
                  labelText: "License Issue Date",
                  hintText: "Enter your Date",
                  controller: controller.issueDateController,
                  isDatePicker: true,
                ),
                CustomDatePicker(
                  labelText: "License Expiry_Date",
                  hintText: "Enter your Date",
                  controller: controller.expiryDateController,
                  isDatePicker: true,
                ),
                CustomTextFormField(
                  labelText: 'Additional information',
                  hintText: 'Additional information',
                  controller: controller.additionalInfoController,
                ),

                Text(
                  'Import License/Certification',
                  style: AppTextStyles.medium16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                FileUploadContainer(
                  onTap: controller.pickImage,
                  image: controller.selectedImage.value,
                  uploadType: "Upload License/Certification",
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.MAP),
                  child: Text(
                    ' + Add another License/Certificates',
                    style: AppTextStyles.medium16.apply(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: "Continue",
                  outlineText: "Back",
                  elevatedOnPressed: () =>
                      Get.toNamed(Routes.OPERETOR_EQUIPMENT_DETAILS),
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
