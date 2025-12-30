import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../shared_screen/common_widget/custom_location_field.dart';
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
                  Row(
                    spacing: 10.w,
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          labelText: 'First name',
                          hintText: 'Enter your name',
                          requiredText: true,
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
                    requiredText: true,
                  ),
                  CustomTextFormField(
                    labelText: 'Also Known As',
                    hintText: 'Enter your nick name',
                  ),
                  CustomTextFormField(
                    labelText: 'Email',
                    hintText: 'Enter your Email',
                    requiredText: true,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomDropdownField(
                          labelText: "code",
                          hintText: "code",
                          items: controller.countryCode,
                          selectedValue: controller.selectedCountryCode.value,
                          onChanged: controller.onCountryCodeSelected,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        flex: 5,
                        child: CustomTextFormField(
                          labelText: 'Phone',
                          hintText: '98********',
                          requiredText: true,
                        ),
                      ),
                    ],
                  ),
                  CustomTextFormField(
                    labelText: 'address line 1',
                    hintText: 'Enter your Address',
                    requiredText: true,
                  ),
                  CustomTextFormField(
                    labelText: 'address line 2',
                    hintText: 'Enter your Address',
                  ),
                  CustomLocationField(
                    hintText: 'Go Location',
                    onPressed: () => Get.toNamed(Routes.MAP),
                  ),
                  CustomDropdownField(
                    labelText: 'Country',
                    requiredText: true,
                    items: controller.country,
                    selectedValue: controller.selectedCountry.value,
                    onChanged: controller.onCountrySelected,
                  ),
                  CustomDropdownField(
                    labelText: 'State',
                    requiredText: true,
                    items: controller.state,
                    selectedValue: controller.selectedState.value,
                    onChanged: controller.onStateSelected,
                  ),
                  CustomDropdownField(
                    labelText: 'District',
                    requiredText: true,
                    items: controller.districts,
                    selectedValue: controller.selectedDistrict.value,
                    onChanged: controller.onDistrictSelected,
                  ),
                  CustomDropdownField(
                    labelText: 'Mandal',
                    items: controller.mandals,
                    selectedValue: controller.selectedMandal.value,
                    onChanged: controller.onMandalSelected,
                  ),
                  CustomTextFormField(
                    labelText: 'Village',
                    hintText: 'Enter your Village',
                  ),
                  CustomTextFormField(
                    labelText: 'Registered by',
                    hintText: 'Registered by',
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
                      onPressed: () => Get.toNamed(Routes.AGENT_ADD_CUSTOMER3),
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
