import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_date_picker.dart';
import '../../../../data/app_colors.dart';
import '../../../../data/app_text_styles.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared_screen/common_widget/custom_dropdown_field.dart';
import '../../../../shared_screen/common_widget/custom_elevated_and_outline_button.dart';
import '../../../../shared_screen/common_widget/custom_text_from_field.dart';
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
                    label: 'Asset ID',
                    hintText: "Start with Asset ID",
                    items: controller.assetTypes,
                    selectedValue: controller.selectedAssetType.value,
                    onChanged: controller.onAssetTypeChanged,
                  ),
                  CustomDropdownField(
                    label: 'Asset Type',
                    items: controller.assetTypes,
                    selectedValue: controller.selectedAssetType.value,
                    onChanged: controller.onAssetTypeChanged,
                  ),

                  CustomTextFromField(
                    labelText: "Drone UIN UK",
                    controller: controller.drones[i]['uin'],
                    hintText: "DGCI UIN Unique Identification Number",
                  ),
                  CustomTextFromField(
                    labelText: "Service Capabilities",
                    controller: controller.drones[i]['serviceCapabilities'],
                    hintText: "What services the drone can perform",
                  ),
                  CustomTextFromField(
                    labelText: "Model",
                    controller: controller.drones[i]['model'],
                    hintText: "Drone model name/number",
                  ),
                  CustomTextFromField(
                    labelText: "Make",
                    controller: controller.drones[i]['make'],
                    hintText: "Brand/Make of the drone",
                  ),
                  CustomTextFromField(
                    labelText: "Manufacture Year",
                    controller: controller.drones[i]['manufactureYear'],
                    hintText: "Year of manufacture",
                  ),
                  CustomTextFromField(
                    labelText: "Serial Number",
                    controller: controller.drones[i]['serialNumber'],
                    hintText: "Drone serial number",
                  ),
                  CustomTextFromField(
                    labelText: "Manufacturer Name",
                    controller: controller.drones[i]['manufacturer'],
                    hintText: "Manufacturer name",
                  ),
                  CustomTextFromField(
                    labelText: "Flight_Hours",
                    controller: controller.drones[i]['flightHours'],
                    hintText: "Total flight hours",
                  ),
                  CustomDatePicker(
                    labelText: "Last Maintenance_Date",
                    hintText: "Last maintenance performed date",
                    controller: controller.drones[i]['lastMaintenanceDate'],
                    isDatePicker: true,
                  ),
                  CustomDropdownField(
                    label: 'Insurance Status',
                    items: controller.insuranceStatus,
                    selectedValue: controller.selectedInsuranceStatus.value,
                    onChanged: controller.onInsuranceChanged,
                  ),
                  CustomDropdownField(
                    label: 'Rent Status',
                    items: controller.rentStatus,
                    selectedValue: controller.selectedRentStatus.value,
                    onChanged: controller.onRentChanged,
                  ),
                  CustomDropdownField(
                    label: 'Operational Status',
                    items: controller.operationalStatus,
                    selectedValue: controller.selectedOperationalStatus.value,
                    onChanged: controller.onOperationalChanged,
                  ),

                  CustomTextFromField(
                    labelText: "Battery type",
                    controller: controller.drones[i]['batteryType'],
                    hintText: "Enter battery type",
                  ),
                  CustomTextFromField(
                    labelText: "Battery Cycles",
                    controller: controller.drones[i]['batteryCycles'],
                    hintText: "Enter battery cycles",
                  ),
                  CustomTextFromField(
                    labelText: "Battery Capacity",
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
