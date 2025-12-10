import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../shared_screen/common_widget/custom_location_field.dart';
import '../../../shared_screen/common_widget/custom_text_from_field.dart';
import '../../../shared_screen/common_widget/multi_dropdown_button.dart';
import '../controllers/agent_add_customer2_controller.dart';

class AgentAddCustomer2View extends GetView<AgentAddCustomer2Controller> {
  const AgentAddCustomer2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                spacing: 12.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Service Locations', style: AppTextStyles.bold24),
                  CustomDropdownField(
                    label: "Service",
                    items: controller.serviceItems,
                    selectedValue: controller.serviceValue.value,
                    onChanged: controller.onSelectedItem,
                  ),
                  Text("Sub Services", style: AppTextStyles.medium20),
                  Column(
                    children: List.generate(controller.subServices.length, (
                      index,
                    ) {
                      final sub = controller.subServices[index];
                      return Row(
                        children: [
                          Checkbox(
                            value:
                                controller.isSelectedMap[sub]?.value ?? false,
                            onChanged: (val) =>
                                controller.checkBoxSelected(sub, val),
                          ),
                          Text(sub),
                        ],
                      );
                    }),
                  ),
                  CustomTextFormField(
                    labelText: 'Location Name',
                    hintText: 'e.g., North GeoCoordinates',
                  ),
                  controller.serviceValue.value == 'agriculture'
                      ? CustomLocationField(
                          hintText: 'Latitude/Longitude',
                          onPressed: () => Get.toNamed(Routes.MAP),
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Start Location',
                                    style: AppTextStyles.medium16,
                                  ),
                                  CustomLocationField(
                                    hintText: 'Latitude/Longitude',
                                    onPressed: () => Get.toNamed(Routes.MAP),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'End Location',
                                    style: AppTextStyles.medium16,
                                  ),
                                  CustomLocationField(
                                    hintText: 'Latitude/Longitude',
                                    onPressed: () => Get.toNamed(Routes.MAP),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                  controller.serviceValue.value == 'agriculture'
                      ? Obx(() {
                          final selected = controller.selectedCropItems;
                          return MultiDropdownButton(
                            label: "Crops",
                            items: controller.cropItems.toList(),
                            selectedItems: selected.toList(),
                            onChanged: (list) {
                              controller.selectedCropItems.assignAll(list);
                            },
                          );
                        })
                      : SizedBox(),

                  Row(
                    spacing: 10.w,
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          labelText: 'Size/distance',
                          hintText: "0",
                        ),
                      ),
                      Expanded(
                        child: CustomDropdownField(
                          label: "Unit",
                          items: controller.items,
                          selectedValue: controller.selectedValue.value,
                          onChanged: controller.onItemSelected,
                        ),
                      ),
                    ],
                  ),
                  Text('Access Instructions', style: AppTextStyles.medium16),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(hintText: 'Enter Instruction'),
                  ),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.MAP),
                    child: Text(
                      ' + Add Location',
                      style: AppTextStyles.medium16.apply(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  CustomElevatedAndOutlineButton(
                    elevateText: 'Save',
                    outlineText: "Back",
                    elevatedOnPressed: () => Get.toNamed(Routes.AGENT_HOME),
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
