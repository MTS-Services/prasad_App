import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/customer/customer_home/views/customer_home_view.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_location_field.dart';
import '../../../../shared_screen/common_widget/custom_text_field_login.dart';
import '../controllers/customer_info2_controller.dart';

class CustomerInfo2View extends GetView<CustomerInfo2Controller> {
  const CustomerInfo2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Obx(() => Column(
              spacing: 12.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Customer Info', style: AppTextStyles.bold24),
                CustomTextFieldLogin(
                  labelText: 'KYC Number',
                  hintText: 'KYC number',
                ),
                Text('Latitude/Longitude', style: AppTextStyles.medium16),
                CustomLocationField(
                  hintText: 'Enter your Latitude/Longitude',
                  icon: Icons.attach_file,
                  onPressed: () => controller.pickFileFromGallery(),
                ),
                Text('Street*', style: AppTextStyles.medium16),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(hintText: 'Enter Street'),
                ),
                Row(
                  spacing: 10.w,
                  children: [
                    Flexible(
                      child: CustomTextFieldLogin(
                        labelText: 'City*',
                        hintText: "Enter City",
                      ),
                    ),
                    Flexible(
                      child: CustomTextFieldLogin(
                        labelText: 'State*',
                        hintText: "Enter State",
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 10.w,
                  children: [
                    Flexible(
                      child: CustomTextFieldLogin(
                        labelText: 'Postal code*',
                        hintText: "Enter code",
                      ),
                    ),
                    Flexible(
                      child: CustomTextFieldLogin(
                        labelText: 'Country*',
                        hintText: "Enter Country",
                      ),
                    ),
                  ],
                ),
                CustomDropdownField(
                  label: "Industry*",
                  items: controller.items,
                  selectedValue: controller.selectedValue.value,
                  onChanged: controller.onSelectedItem,
                ),
                Text("Sub Services", style: AppTextStyles.medium20),
                Column(
                  children: List.generate(
                    controller.subServices.length,
                        (index) {
                      final sub = controller.subServices[index];
                      return Row(
                        children: [
                          Checkbox(
                            value: controller.isSelectedMap[sub]?.value ?? false,
                            onChanged: (val) => controller.checkBoxSelected(sub, val),
                          ),
                          Text(sub),
                        ],
                      );
                    },
                  ),
                ),
                CustomElevatedAndOutlineButton(
                  elevateText: "Confirm Registration",
                  outlineText: 'Back',
                  elevatedOnPressed: () =>
                      Get.offAndToNamed(Routes.CUSTOMER_BOTTOM_NAVI_BAR),
                  outlineOnPressed: () {},
                ),
              ],
            ),)
          ),
        ),
      ),
    );
  }
}
