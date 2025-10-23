import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/app_colors.dart';
import 'package:prasad/app/data/app_text_styles.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_dropdown_field.dart';
import 'package:prasad/app/shared_screen/common_widget/custom_text_field_login.dart';

import '../controllers/customer_service_location_controller.dart';

class CustomerServiceLocationView
    extends GetView<CustomerServiceLocationController> {
  const CustomerServiceLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 12.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Service Locations',
                style: AppTextStyles.bold24,
                textAlign: TextAlign.center,
              ),
              CustomTextFieldLogin(
                name: 'Location Name',
                hintText: 'e.g., North GeoCoordinates',
              ),
              Text('Latitude/Longitude', style: AppTextStyles.medium16),
              CustomLatitude(),
              Row(
                children: [
                  CustomTextFieldLogin(name: 'Land Size', hintText: "Acres"),
                  CustomDropdownField(
                    label: "Unit",
                    items: controller.items,
                    selectedValue: controller.selectedValue.value,
                    onChanged: controller.onItemSelected,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLatitude extends StatelessWidget {
  const CustomLatitude({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColors.blackColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '17.4529, -78.3982',
              style: AppTextStyles.regular12.copyWith(
                color: AppColors.hintColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_location_alt_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
