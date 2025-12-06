import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../shared_screen/common_widget/custom_text_from_field.dart';
import '../controllers/agent_add_customer1_controller.dart';

class AgentAddCustomer1View extends GetView<AgentAddCustomer1Controller> {
  const AgentAddCustomer1View({super.key});

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
                  CustomDropdownField(
                    label: 'Mandal',
                    items: controller.districts,
                    selectedValue: controller.selectedDistrict.value,
                    onChanged: controller.onDistrictSelected,
                  ),
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
                  CustomTextFromField(
                    labelText: 'Customer ID',
                    hintText: 'Enter Customer Id',
                  ),
                  CustomTextFromField(
                    labelText: 'Phone',
                    hintText: '+91-98********',
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
                    label: 'Village',
                    items: controller.villages,
                    selectedValue: controller.selectedVillage.value,
                    onChanged: controller.onVillageSelected,
                  ),
                  CustomDropdownField(
                    label: 'Registered by',//auto fill hobe
                    items: controller.registeredBy,
                    selectedValue: controller.selectedRegisteredBy.value,
                    onChanged: controller.onRegisteredBySelected,
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
                      onPressed: () => Get.toNamed(Routes.AGENT_ADD_CUSTOMER2),
                      child: Text('Next'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wifi_calling_3_outlined,size: 26,),
                        Text("  Call For Support",style: AppTextStyles.medium20,)
                      ],
                    )),
                  ),
                  SizedBox(height: 10.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
