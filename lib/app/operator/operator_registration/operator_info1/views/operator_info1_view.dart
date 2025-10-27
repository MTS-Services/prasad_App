import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/operator/operator_registration/operator_info1/widget/custom_operator_location_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_elevated_and_outline_button.dart';

import '../../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_text_field_login.dart';
import '../controllers/operator_info1_controller.dart';

class OperatorInfo1View extends GetView<OperatorInfo1Controller> {
  const OperatorInfo1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Obx(
                  () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12.h,
                children: [
                  Text('Drone Operator Info', style: AppTextStyles.bold24),

                  CustomTextFieldLogin(
                    name: 'First name',
                    hintText: 'Enter your name',
                    controller: controller.firstNameController,
                  ),
                  CustomTextFieldLogin(
                    name: 'Last name',
                    hintText: 'Enter your last name',
                    controller: controller.lastNameController,
                  ),
                  CustomTextFieldLogin(
                    name: 'Phone Number',
                    hintText: 'Enter your phone number',
                    controller: controller.phoneController,
                  ),
                  CustomTextFieldLogin(
                    name: 'Email',
                    hintText: 'Enter your email',
                    controller: controller.emailController,
                  ),

                  Text('Latitude/Longitude*', style: AppTextStyles.medium16),
                  CustomOperatorLocationField(
                    onPressed: () {
                      // you can integrate a map picker later
                      controller.locationController.text =
                      "23.8103, 90.4125"; // example value
                    },
                    hintText: "Latitude and longitude",
                  ),

                  CustomTextFieldLogin(
                    name: "Service radius*",
                    hintText: "e.g. 40KM",
                    controller: controller.serviceRadiusController,
                  ),

                  CustomDropdownField(
                    label: 'Industry*',
                    items: controller.industryItems,
                    selectedValue: controller.selectedIndustry.value,
                    onChanged: controller.onIndustrySelected,
                  ),

                  Text("Sub category", style: AppTextStyles.medium16),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.subCategories.length,
                    itemBuilder: (context, index) {
                      final sub = controller.subCategories[index];
                      return GestureDetector(
                        onTap: () => controller.removeSubCategory(index),
                        child: subCategoryContainer(sub),
                      );
                    },
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Example: add a static item for now
                        controller.addSubCategory("Drone Mapping & Surveying (MAP)");
                      },
                      child: const Text('Add a new Services'),
                    ),
                  ),

                  Text('Upload Profile', style: AppTextStyles.medium16),
                  const FileUploadContainer(),

                  CustomElevatedAndOutlineButton(
                    elevateText: "Continue",
                    outlineText: "Back",
                    elevatedOnPressed: () =>
                        Get.toNamed(Routes.OPERATOR_DRONE_DETAILS),
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
                          onTap: () => Get.toNamed(Routes.LOGIN),
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
      ),
    );
  }
}

Widget subCategoryContainer(String subtext) {
  return IntrinsicWidth(
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.whiteColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              subtext,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(width: 5),
            const Text('|'),
            const SizedBox(width: 5),
            Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.blackColor),
              ),
              child: const Icon(Icons.close, size: 12),
            ),
          ],
        ),
      ),
    ),
  );
}
