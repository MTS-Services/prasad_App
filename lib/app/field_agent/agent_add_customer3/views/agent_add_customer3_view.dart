import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_text_styles.dart';
import '../../../routes/app_pages.dart';
import '../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../shared_screen/common_widget/custom_location_field.dart';
import '../../../shared_screen/common_widget/custom_text_from_field.dart';
import '../controllers/agent_add_customer3_controller.dart';

class AgentAddCustomer3View extends GetView<AgentAddCustomer3Controller> {
  const AgentAddCustomer3View({super.key});
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
                  CustomTextFormField(
                    labelText: 'KYC Number',
                    hintText: 'KYC number',
                  ),
                  CustomLocationField(
                    hintText: 'KYC Documents Upload',
                    icon: Icons.attach_file,
                    onPressed: () => controller.pickFileFromGallery(),
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(hintText: 'Enter Street'),
                  ),
                  Row(
                    spacing: 10.w,
                    children: [
                      Flexible(
                        child: CustomTextFormField(
                          labelText: 'City',
                          hintText: "Enter City",
                        ),
                      ),
                      Flexible(
                        child: CustomDropdownField(
                          labelText: "State",
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
                        child: CustomTextFormField(
                          labelText: 'Postal code',
                          hintText: "Enter code",
                        ),
                      ),
                      Flexible(
                        child: CustomTextFormField(
                          labelText: 'Country',
                          hintText: "Enter Country",
                        ),
                      ),
                    ],
                  ),
                  CustomDropdownField(
                    labelText: "Service",
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
                    elevateText: "Next",
                    outlineText: 'Back',
                    elevatedOnPressed: () =>
                        Get.toNamed(Routes.AGENT_ADD_CUSTOMER2),
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
