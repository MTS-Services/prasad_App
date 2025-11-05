import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_dropdown_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_field_login.dart';
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
                        child: CustomTextFieldLogin(
                          name: 'First name',
                          hintText: 'Enter your name',
                        ),
                      ),
                      Expanded(
                        child: CustomTextFieldLogin(
                          name: 'Middle name',
                          hintText: 'Enter your middle name',
                        ),
                      ),
                    ],
                  ),
                  CustomTextFieldLogin(
                    name: 'Last name',
                    hintText: 'Enter your last name',
                  ),
                  CustomTextFieldLogin(
                    name: 'Also Known As',
                    hintText: 'Enter your nick name',
                  ),
                  CustomTextFieldLogin(
                    name: 'Phone',
                    hintText: '+91-98********',
                  ),
                  CustomTextFieldLogin(
                    name: 'Email',
                    hintText: '+Enter your Email',
                  ),
                  CustomDropdownField(
                    label: 'District',
                    items: controller.districts,
                    selectedValue: controller.selectedDistrict.value,
                    onChanged: controller.onDistrictSelected,
                  ),
                  CustomDropdownField(
                    label: '* Mandal',
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
                  CustomDropdownField(
                    label: 'Registered by',
                    items: controller.registeredBy,
                    selectedValue: controller.selectedRegisteredBy.value,
                    onChanged: controller.onRegisteredBySelected,
                  ),

                  Text('Upload Profile', style: AppTextStyles.medium16),
                  Obx(() => FileUploadContainer(
                    onTap: controller.pickImage,
                    image: controller.selectedImage.value,
                  )),
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

