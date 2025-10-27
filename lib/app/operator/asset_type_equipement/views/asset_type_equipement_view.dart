import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_appbar.dart';

import '../controllers/asset_type_equipement_controller.dart';

class AssetTypeEquipementView extends GetView<AssetTypeEquipementController> {
  const AssetTypeEquipementView({super.key});
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
                  buildContainer('Equipment'),
                  Text('Equipment_ID',style: AppTextStyles.regular16,),
                  buildContainer('EQP-DRN-001'),
                  Text('Asset ID',style: AppTextStyles.regular16,),
                  buildContainer('AST-IND-2025-DRN01'),
                  Text('Equipement type',style: AppTextStyles.regular16,),
                  buildContainer('Camera'),
                  Text('Model',style: AppTextStyles.regular16,),
                  buildContainer('Phantom 4 Pro'),
                  Text('Make',style: AppTextStyles.regular16,),
                  buildContainer('DJI'),
                  Text('Manufacture_Year',style: AppTextStyles.regular16,),
                  buildContainer('2022'),
                  Text('Serial_Number',style: AppTextStyles.regular16,),
                  buildContainer('P4P-22IND-93847'),
                  const SizedBox(height: 8,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent
                      ),
                      child: Text('Add another Equipement  +'),
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
