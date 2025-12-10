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
import '../../../../shared_screen/common_widget/custom_text_from_field.dart';
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
                  Row(
                    spacing: 10.w,
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          labelText: 'First name',
                          hintText: 'Enter your name',
                        ),
                      ),
                      Expanded(
                        child: CustomTextFormField(
                          labelText: 'Middle initial',
                          hintText: 'Enter your middle initial',
                        ),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    labelText: 'Last name',
                    hintText: 'Enter your last name',
                  ),
                  CustomTextFormField(
                    labelText: 'Also Known As',
                    hintText: 'Enter your nick name',
                  ),
                  CustomTextFormField(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomDropdownField(
                          label: "code",
                          hintText: "code",
                          items: controller.countryCode,
                          selectedValue: controller.selectedcountryCode.value,
                          onChanged: controller.onCountryCodeSelected,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        flex: 5,
                        child: CustomTextFormField(
                          labelText: 'Phone',
                          hintText: '98********',
                        ),
                      ),

                    ],
                  ),
                  CustomTextFormField(
                    labelText: 'address line 1',
                    hintText: 'Enter your Address',
                  ),
                  CustomTextFormField(
                    labelText: 'address line 2',
                    hintText: 'Enter your Address',
                  ),
                  CustomDropdownField(
                    label: 'Country',
                    items: controller.country,
                    selectedValue: controller.selectedCountry.value,
                    onChanged: controller.onCountrySelected,
                  ),
                  CustomDropdownField(
                    label: 'State',
                    items: controller.state,
                    selectedValue: controller.selectedState.value,
                    onChanged: controller.onStateSelected,
                  ),
                  CustomDropdownField(
                    label: 'District',
                    items: controller.districts,
                    selectedValue: controller.selectedDistrict.value,
                    onChanged: controller.onDistrictSelected,
                  ),
                  CustomDropdownField(
                    label: 'Mandal',
                    items: controller.mandals,
                    selectedValue: controller.selectedMandal.value,
                    onChanged: controller.onMandalSelected,
                  ),
                  CustomTextFormField(
                    labelText: 'Village',
                    hintText: 'Enter your Village',
                  ),
                  CustomDropdownField(
                    label: 'Service',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onSelectedItem,
                  ),
                  Text("Sub Services", style: AppTextStyles.medium20),

                  Obx(() {
                    return Column(
                      children: controller.subServices.map((sub) {
                        return Obx(() {
                          return Row(
                            children: [
                              Checkbox(
                                value: controller.isSelectedMap[sub]?.value ?? false,
                                onChanged: (val) =>
                                    controller.checkBoxSelected(sub, val ?? false),
                              ),
                              Text(sub),
                            ],
                          );
                        });
                      }).toList(),
                    );
                  }),

                  Text('Upload Profile', style: AppTextStyles.medium16),
                  FileUploadContainer(
                    onTap: controller.pickImage,
                    image: controller.selectedImage.value,
                    uploadType: 'Upload Profile',
                  ),

                  CustomElevatedAndOutlineButton(
                    elevateText: "Continue",
                    outlineText: "Back",
                    elevatedOnPressed: () =>
                        Get.toNamed(Routes.OPERATOR_DRONE_DETAILS),
                    outlineOnPressed: () => Get.back(),
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