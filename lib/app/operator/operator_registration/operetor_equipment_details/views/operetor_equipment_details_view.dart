import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../customer/customer_registration/customer_info1/widget/file_upload_container.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_date_picker.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_text_from_field.dart';
import '../controllers/operetor_equipment_details_controller.dart';

class OperetorEquipmentDetailsView
    extends GetView<OperetorEquipmentDetailsController> {
  const OperetorEquipmentDetailsView({super.key});
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
                  Text('Equipment Details', style: AppTextStyles.bold24),
                  Text('Add information about your equipment', style: AppTextStyles.regular16),
                  CustomTextFormField(
                    labelText: 'Equipment ID',
                    hintText: 'EQP-XXXXXXXXX',
                  ),
                  CustomTextFormField(
                    labelText: 'Asset ID',
                    hintText: 'Enter your Asset ID',
                  ),
                  CustomDropdownField(
                    labelText: 'Equipment Type',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),


                  CustomTextFormField(
                    labelText: 'Model',
                    hintText: 'Model year and version',
                  ),
                  CustomTextFormField(
                    labelText: 'Make',
                    hintText: 'Make',
                  ),
                  CustomTextFormField(
                    labelText: 'Manufacturer',
                    hintText: 'Manufacturer',
                  ),
                  CustomTextFormField(
                    labelText: 'Year',
                    hintText: 'Year of Manufacture',
                  ),
                  CustomTextFormField(
                    labelText: 'Serial Number',
                    hintText: 'Serial Number',
                  ),
                  CustomDatePicker(
                    labelText: "Last Maintenance Date",
                    hintText: "Last Maintenance datatime",
                    controller: controller.maintenanceDateController,
                    isDatePicker: true,
                  ),

                  CustomElevatedAndOutlineButton(
                    elevateText: "Continue",
                    outlineText: "Back",
                    elevatedOnPressed: () => Get.toNamed(Routes.OPERETOR_EXPERIENCE_AND_RECORDS),
                    outlineOnPressed: () => Get.back(),
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
