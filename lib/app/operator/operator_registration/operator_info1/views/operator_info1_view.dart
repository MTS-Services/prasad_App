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
                  ),
                  CustomTextFieldLogin(
                    name: 'Last name',
                    hintText: 'Enter your last name',
                  ),
                  CustomTextFieldLogin(
                    name: 'Phone Number',
                    hintText: 'Enter your phone number',
                  ),
                  CustomTextFieldLogin(
                    name: 'Email',
                    hintText: 'Enter your email',
                  ),
                  Text('Latitude/Longitude*', style: AppTextStyles.medium16),
                  CustomOperatorLocationField(
                    hintText: "Latitude and longitude",
                  ),
                  CustomTextFieldLogin(
                    name: "Service rediuns*",
                    hintText: "e.g. 40KM",
                  ),
                  CustomDropdownField(
                    label: 'Industry*',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                  Text("Sub category", style: AppTextStyles.medium16),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                        subCategoryContainer("Drone Mapping & Surveying (MAP)"),
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Add a new Services'),
                    ),
                  ),

                  Text('Upload Profile', style: AppTextStyles.medium16),
                  FileUploadContainer(),
                  CustomElevatedAndOutlineButton(
                    elevateText: "Continue",
                    outlineText: "Back",
                    elevatedOnPressed: () => Get.toNamed(Routes.OPERATOR_DRONE_DETAILS),
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
