import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../controllers/asset_type_drone_controller.dart';

class AssetTypeDroneView extends GetView<AssetTypeDroneController> {
  const AssetTypeDroneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.darkGrayColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  Text('Asset Type',style: AppTextStyles.regular16,),
                  buildContainer('Drone'),
                  Text('Drone_UIN UK',style: AppTextStyles.regular16,),
                  buildContainer('IND-DRN-UK-5842'),
                  Text('License_Number',style: AppTextStyles.regular16,),
                  buildContainer('DGCA-IND-DRONE-784512'),
                  Text('License Issue Date',style: AppTextStyles.regular16,),
                  buildContainer('2023-02-10'),
                  Text('License_Expiry_Date',style: AppTextStyles.regular16,),
                  buildContainer('2028-02-09'),
                  Text('Service_Capabilities',style: AppTextStyles.regular16,),
                  buildContainer('Aerial Mapping, Surveillance, Photography'),
                  Text('Model',style: AppTextStyles.regular16,),
                  buildContainer('Phantom 4 Pro'),
                  Text('Make',style: AppTextStyles.regular16,),
                  buildContainer('DJI'),
                  Text('Manufacture_Year',style: AppTextStyles.regular16,),
                  buildContainer('2022'),
                  Text('Serial_Number',style: AppTextStyles.regular16,),
                  buildContainer('P4P-22IND-93847'),
                  Text('Manufacturer',style: AppTextStyles.regular16,),
                  buildContainer('DJI Innovations'),
                  Text('Flight_Hours',style: AppTextStyles.regular16,),
                  buildContainer('156 Hours'),
                  Text('Last_Maintenance_Date',style: AppTextStyles.regular16,),
                  buildContainer('2025-07-15'),
                  Text('Insurance_Status',style: AppTextStyles.regular16,),
                  buildContainer('Active (Valid till 2026-07-14)'),
                  Text('Operational_Status',style: AppTextStyles.regular16,),
                  buildContainer('Operational'),
                  Text('Battery type',style: AppTextStyles.regular16,),
                  buildContainer('LiPo 4S'),
                  Text('Battery_Cycles',style: AppTextStyles.regular16,),
                  buildContainer('87'),
                  Text('Battery_Capacity (mAh/Wh)',style: AppTextStyles.regular16,),
                  buildContainer('5870 mAh / 89.2 Wh'),
                  Text('Drone_Condition',style: AppTextStyles.regular16,),
                  buildContainer('Excellent'),
                  const SizedBox(height: 8,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent
                      ),
                      child: Text('Add another Drone  +'),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String title) {
    return Container(
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                );
  }
}
