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
import '../../../../shared_screen/common_widget/custom_text_from_field.dart';
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
                CustomTextFromField(
                  labelText: 'KYC Number',
                  hintText: 'KYC number',
                ),
                CustomLocationField(
                  hintText: 'KYC Documents Upload',
                  icon: Icons.attach_file,
                  onPressed: () => controller.pickFileFromGallery(),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter Street'),
                ),
                Row(
                  spacing: 10.w,
                  children: [
                    Flexible(
                      child: CustomTextFromField(
                        labelText: 'City',
                        hintText: "Enter City",
                      ),
                    ),
                    Flexible(
                      child: CustomDropdownField(
                        label: "State",
                        items: controller.items,
                        selectedValue: controller.selectedValue.value,
                        onChanged: controller.onSelectedItem,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 10.w,
                  children: [
                    Flexible(
                      child: CustomTextFromField(
                        labelText: 'Postal code',
                        hintText: "Enter code",
                      ),
                    ),
                    Flexible(
                      child: CustomTextFromField(
                        labelText: 'Country',
                        hintText: "Enter Country",
                      ),
                    ),
                  ],
                ),
                CustomDropdownField(
                  label: "Service",
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
                      Get.offAllNamed(Routes.CUSTOMER_BOTTOM_NAVI_BAR),
                  outlineOnPressed:() => Get.back(),
                ),
              ],
            ),)
          ),
        ),
      ),
    );
  }
}
