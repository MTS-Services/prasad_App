import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_text_field_login.dart';
import '../controllers/operator_drone_details_controller.dart';

class OperatorDroneDetailsView extends GetView<OperatorDroneDetailsController> {
  const OperatorDroneDetailsView({super.key});
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
                  Text('Drone Operator Info', style: AppTextStyles.bold24),
                  Text('Drone 1', style: AppTextStyles.bold24),
                  CustomDropdownField(
                    label: 'Asset Type*',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                  CustomTextFieldLogin(
                    name: "Drone_UIN UK",
                    hintText: "DGCI UIN Unique Identification Number",
                  ),
                  CustomTextFieldLogin(
                    name: "Service_Capabilities",
                    hintText: "What services the drone can perform",
                  ),
                  CustomTextFieldLogin(
                    name: "Model",
                    hintText: "Drone model name/number",
                  ),
                  CustomTextFieldLogin(
                    name: "Make",
                    hintText: "Brand/Make of the drone",
                  ),
                  CustomTextFieldLogin(
                    name: "Manufacture_Year",
                    hintText: "Year of manufacture",
                  ),
                  CustomTextFieldLogin(
                    name: "Serial_Number",
                    hintText: "Drone serial number",
                  ),
                  CustomTextFieldLogin(
                    name: "Manufacturer",
                    hintText: "Manufacturer name",
                  ),
                  CustomTextFieldLogin(
                    name: "Flight_Hours",
                    hintText: "Total flight hours",
                  ),
                  CustomTextFieldLogin(
                    name: "Last_Maintenance_Date",
                    hintText: "Last maintenance performed date",
                  ),
                  CustomDropdownField(
                    label: 'Insurance_Status',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                  CustomDropdownField(
                    label: 'Rent_Status',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                  CustomDropdownField(
                    label: 'Operational_Status',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                  CustomTextFieldLogin(
                    name: "Battery type",
                    hintText: "Enter battery type",
                  ),
                  CustomTextFieldLogin(
                    name: "Battery_Cycles",
                    hintText: "Enter battery cycles",
                  ),
                  CustomTextFieldLogin(
                    name: "Battery_Capacity (mAh/Wh)",
                    hintText: "Enter battery capacity",
                  ),
                  CustomDropdownField(
                    label: 'Drone_Condition',
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        foregroundColor: AppColors.blackColor,
                      ),
                      onPressed: () {},
                      label: Text("Add another Drone"),
                      icon: Icon(Icons.add),
                    ),
                  ),

                  CustomElevatedAndOutlineButton(
                    elevateText: "Continue",
                    outlineText: "Back",
                    elevatedOnPressed: () => Get.toNamed(Routes.OPERATOR_INFO1),
                    outlineOnPressed: () => Get.back(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Text(
                          "Already have an account? ",
                          style: AppTextStyles.regular16,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: Text(
                            "Sign In",
                            style: AppTextStyles.medium16.copyWith(
                              color: AppColors.primaryColor,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
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
