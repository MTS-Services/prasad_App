import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../data/app_text_styles.dart';
import '../../../operator/operator_registration/operator_info1/widget/custom_operator_location_field.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../shared_screen/common_widget/custom_text_field_login.dart';
import '../controllers/agent_registration1_controller.dart';

class AgentRegistration1View extends GetView<AgentRegistration1Controller> {
  const AgentRegistration1View({super.key});

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

                  Row(
                    spacing: 10.w,
                    children: [
                      Expanded(
                        child: CustomTextFieldLogin(
                          labelText: 'First name',
                          hintText: 'Enter your name',
                          controller: controller.firstNameController,
                        ),
                      ),
                      Expanded(
                        child: CustomTextFieldLogin(
                          labelText: 'Middle name',
                          hintText: 'Enter your name',
                          controller: controller.firstNameController,
                        ),
                      ),
                    ],
                  ),
                  CustomTextFieldLogin(
                    labelText: 'Last name',
                    hintText: 'Enter your last name',
                    controller: controller.lastNameController,
                  ),
                  CustomTextFieldLogin(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                    controller: controller.phoneController,
                  ),
                  CustomTextFieldLogin(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    controller: controller.emailController,
                  ),

                  Text('Latitude/Longitude*', style: AppTextStyles.medium16),
                  CustomOperatorLocationField(
                    onPressed: () {
                      controller.locationController.text =
                          "23.8103, 90.4125"; // example value
                    },
                    hintText: "Latitude and longitude",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Service radius*",
                    hintText: "e.g. 40KM",
                    controller: controller.serviceRadiusController,
                  ),
                  CustomDropdownField(
                    label: 'Industry*',
                    items: controller.industryItems,
                    selectedValue: controller.selectedIndustry.value,
                    onChanged: controller.onIndustrySelected,
                  ),

                  Text("Sub Services", style: AppTextStyles.medium20),
                  Column(
                    children: List.generate(controller.subServices.length, (
                      index,
                    ) {
                      final sub = controller.subServices[index];
                      return Row(
                        children: [
                          Checkbox(
                            value:
                                controller.isSelectedMap[sub]?.value ?? false,
                            onChanged: (val) =>
                                controller.checkBoxSelected(sub, val),
                          ),
                          Text(sub),
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add A New Services"),
                    ),
                  ),

                  Text('Upload Profile', style: AppTextStyles.medium16),
                  FileUploadContainer(
                    onTap: controller.pickImage,
                    image: controller.selectedImage.value,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.offAllNamed(Routes.WAITING_APPROVAL),
                      child: Text("Submit"),
                    ),
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

/*
Widget _subCategoryContainer(String subtext) {
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
}*/
