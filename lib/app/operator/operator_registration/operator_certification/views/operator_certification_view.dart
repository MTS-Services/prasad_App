import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_text_field_login.dart';
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
                Text('Add Your License/Certification', style: AppTextStyles.bold24),
                CustomTextFieldLogin(
                  name: 'License_Number (Unique)',
                  hintText: 'Enter your address',
                  controller: controller.licenseNumberController,
                ),
                CustomTextFieldLogin(
                  name: 'License_Issue_Date',
                  hintText: 'Enter your Date',
                  controller: controller.issueDateController,

                ),
                CustomTextFieldLogin(
                  name: 'License_Expiry_Date',
                  hintText: 'Enter your Date',
                  controller: controller.expiryDateController,

                ),
                CustomTextFieldLogin(
                  name: 'Additional information',
                  hintText: 'Additional information',
                  controller: controller.additionalInfoController,

                ),

                Text('Import License/Certification', style: AppTextStyles.medium16),
                FileUploadContainer(),
                CustomElevatedAndOutlineButton(
                  elevateText: "Next",
                  outlineText: "Back",
                  elevatedOnPressed: () => Get.toNamed(Routes.OPERETOR_EQUIPMENT_DETAILS),
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
                SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
