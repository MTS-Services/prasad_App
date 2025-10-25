import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:prasad/app/data/image_path.dart';

import '../../../data/app_colors.dart';
import '../../cutomer_notification/widget/back_button_card.dart';
import '../controllers/customer_service_details_map_controller.dart';
import '../widget/map_preview.dart';
import '../widget/step_tracker.dart';

class CustomerServiceDetailsMapView
    extends GetView<CustomerServiceDetailsMapController> {
  const CustomerServiceDetailsMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonCard(
                onTap: () => Get.back(),
                color: AppColors.primaryColor,
                icon: Icons.arrow_back,
                iconColor: Colors.white,
              ),
              SizedBox(height: 15.h),
              MapPreview(latitude: 24.8103, longitude: 90.4125, zoom: 13),
              SizedBox(height: 20.h),
              StepTracker(
                currentStep: 0,
                steps: const [
                  "Pending",
                  "Assigned",
                  "En Route",
                  "In Progress",
                  "Completed",
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offNamed('/customer-note');
                      },
                      child: Text("Reschedule"),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor
                      ),
                      onPressed: () {},
                      child: Text("Acknowledge service"),
                    ),
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
