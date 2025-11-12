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
          padding: const EdgeInsets.all(16),
          child: Obx(
                () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12.h,
              children: [
                Text('Drone Operator Info', style: AppTextStyles.bold24),

                // Show multiple drones dynamically
                for (int i = 0; i < controller.drones.length; i++) ...[
                  Text('Drone ${i + 1}', style: AppTextStyles.bold24),

                  CustomDropdownField(
                    label: 'Asset Type*',
                    hintText: "Start with Asset ID",
                    items: controller.assetTypes,
                    selectedValue: controller.selectedAssetType.value,
                    onChanged: controller.onAssetTypeChanged,
                  ),

                  CustomTextFieldLogin(
                    labelText: "Drone_UIN UK",
                    controller: controller.drones[i]['uin'],
                    hintText: "DGCI UIN Unique Identification Number",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Service_Capabilities",
                    controller: controller.drones[i]['serviceCapabilities'],
                    hintText: "What services the drone can perform",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Model",
                    controller: controller.drones[i]['model'],
                    hintText: "Drone model name/number",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Make",
                    controller: controller.drones[i]['make'],
                    hintText: "Brand/Make of the drone",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Manufacture_Year",
                    controller: controller.drones[i]['manufactureYear'],
                    hintText: "Year of manufacture",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Serial_Number",
                    controller: controller.drones[i]['serialNumber'],
                    hintText: "Drone serial number",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Manufacturer",
                    controller: controller.drones[i]['manufacturer'],
                    hintText: "Manufacturer name",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Flight_Hours",
                    controller: controller.drones[i]['flightHours'],
                    hintText: "Total flight hours",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Last_Maintenance_Date",
                    controller: controller.drones[i]['lastMaintenanceDate'],
                    hintText: "Last maintenance performed date",
                  ),

                  CustomDropdownField(
                    label: 'Insurance_Status',
                    items: controller.insuranceStatus,
                    selectedValue: controller.selectedInsuranceStatus.value,
                    onChanged: controller.onInsuranceChanged,
                  ),
                  CustomDropdownField(
                    label: 'Rent_Status',
                    items: controller.rentStatus,
                    selectedValue: controller.selectedRentStatus.value,
                    onChanged: controller.onRentChanged,
                  ),
                  CustomDropdownField(
                    label: 'Operational_Status',
                    items: controller.operationalStatus,
                    selectedValue: controller.selectedOperationalStatus.value,
                    onChanged: controller.onOperationalChanged,
                  ),

                  CustomTextFieldLogin(
                    labelText: "Battery type",
                    controller: controller.drones[i]['batteryType'],
                    hintText: "Enter battery type",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Battery_Cycles",
                    controller: controller.drones[i]['batteryCycles'],
                    hintText: "Enter battery cycles",
                  ),
                  CustomTextFieldLogin(
                    labelText: "Battery_Capacity (mAh/Wh)",
                    controller: controller.drones[i]['batteryCapacity'],
                    hintText: "Enter battery capacity",
                  ),

                  CustomDropdownField(
                    label: 'Drone_Condition',
                    items: controller.droneCondition,
                    selectedValue: controller.selectedDroneCondition.value,
                    onChanged: controller.onDroneConditionChanged,
                  ),

                  const Divider(thickness: 1),
                ],

                // Add another drone
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      foregroundColor: AppColors.blackColor,
                    ),
                    onPressed: controller.addNewDrone,
                    icon: const Icon(Icons.add),
                    label: const Text("Add Another Drone"),
                  ),
                ),

                // Continue & Back buttons
                CustomElevatedAndOutlineButton(
                  elevateText: "Continue",
                  outlineText: "Back",
                  elevatedOnPressed: () =>
                      Get.toNamed(Routes.OPERATOR_CERTIFICATION),
                  outlineOnPressed: () => Get.back(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
