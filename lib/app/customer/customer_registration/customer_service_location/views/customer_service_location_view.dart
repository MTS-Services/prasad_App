import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/routes/app_pages.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_dropdown_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_field_login.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_elevated_and_outline_button.dart';

import '../../../../shared_screen/common_widget/custom_location_field.dart';
import '../controllers/customer_service_location_controller.dart';

class CustomerServiceLocationView
    extends GetView<CustomerServiceLocationController> {
  const CustomerServiceLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 12.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Service Locations', style: AppTextStyles.bold24),
                CustomTextFieldLogin(
                  name: 'Location Name',
                  hintText: 'e.g., North GeoCoordinates',
                ),
                Text('Latitude/Longitude', style: AppTextStyles.medium16),
                CustomLocationField(hintText: 'Enter your Latitude'),
                Row(
                  spacing: 10.w,
                  children: [
                    Expanded(
                      child: CustomTextFieldLogin(
                        name: 'Land Size',
                        hintText: "0",
                      ),
                    ),
                    Obx(() => Expanded(
                      child: CustomDropdownField(
                        label: "Unit",
                        items: controller.items,
                        selectedValue: controller.selectedValue.value,
                        onChanged: controller.onItemSelected,
                      ),
                    ),)
                  ],
                ),
                Text('Access Instructions', style: AppTextStyles.medium16),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Enter Instruction'
                  ),
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: 'Save',
                  outlineText: "Add Location",
                  elevatedOnPressed: () => Get.toNamed(Routes.CUSTOMER_INFO2),
                  outlineOnPressed: () => Get.toNamed(Routes.MAP),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

