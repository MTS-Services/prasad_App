import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_dropdown_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_from_field.dart';
import '../controllers/customer_info1_controller.dart';
import '../widget/file_upload_container.dart';

class CustomerInfo1View extends GetView<CustomerInfo1Controller> {
  const CustomerInfo1View({super.key});

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
                  Text('Customer Info', style: AppTextStyles.bold24),
                  Row(
                    spacing: 10.w,
                    children: [
                      Expanded(
                        child: CustomTextFromField(
                          labelText: 'First name',
                          hintText: 'Enter your name',
                        ),
                      ),
                      Expanded(
                        child: CustomTextFromField(
                          labelText: 'Middle name',
                          hintText: 'Enter your middle name',
                        ),
                      ),
                    ],
                  ),
                  CustomTextFromField(
                    labelText: 'Last name',
                    hintText: 'Enter your last name',
                  ),
                  CustomTextFromField(
                    labelText: 'Also Known As',
                    hintText: 'Enter your nick name',
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
                        child: CustomTextFromField(
                          labelText: 'Phone',
                          hintText: '+91-98********',
                        ),
                      ),

                    ],
                  ),
                  CustomTextFromField(
                    labelText: 'Email',
                    hintText: '+Enter your Email',
                  ),
                  CustomTextFromField(
                    labelText: 'Email',
                    hintText: '+Enter your Email',
                  ),
                  CustomTextFromField(
                    labelText: 'Email',
                    hintText: '+Enter your Email',
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
                  CustomDropdownField(
                    label: 'Village',
                    items: controller.villages,
                    selectedValue: controller.selectedVillage.value,
                    onChanged: controller.onVillageSelected,
                  ),
                  CustomTextFromField(
                    labelText: 'Registered by',
                    hintText: '+Enter your Email',
                  ),

                  Text('Upload Profile', style: AppTextStyles.medium16),
                  Obx(
                    () => FileUploadContainer(
                      onTap: controller.pickImage,
                      image: controller.selectedImage.value,
                      uploadType: 'Upload Profile',
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () =>
                          Get.toNamed(Routes.CUSTOMER_SERVICE_LOCATION),
                      child: Text('Next'),
                    ),
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
